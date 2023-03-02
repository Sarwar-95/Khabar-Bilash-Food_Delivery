import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:newapp/const/colors.dart';

class PaymentGateway extends StatefulWidget {
  final String pymentValue;
  PaymentGateway({Key? key, required this.pymentValue}) : super(key: key);

  @override
  _PaymentGatewayState createState() => _PaymentGatewayState();
}

class _PaymentGatewayState extends State<PaymentGateway> {
  Map<String, dynamic>? paymentIntentData;
  //---------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        title: Center(child: const Text('Payment Method')),
        backgroundColor: RrestaurantAppBarColor,
      ),
      body: Center(
        child: InkWell(
          onTap: () async {
            String value = widget.pymentValue;
            print(value);

            await makePayment(value); //future function calling
          },
          child: Container(
            height: 50,
            width: 200,
            color: Colors.green,
            child: const Center(
              child: Text(
                'Stripe',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }

//===================================================================
//====================    makePayment()  ============================
//===================================================================

  Future<void> makePayment(String? value) async {
    try {
      String currency = "BDT";
      paymentIntentData = await createPaymentIntent(value!, currency);
      print("Hello : " + value);
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              setupIntentClientSecret:
                  'sk_test_51MfNKcBb06WVShYGm9BmpGtyIXXez2TkdHvQXsDpwqt4ubS7JoIWVdWconDlelriMIPlfKqbbVKJuAiUiVWeTgAc00ddUqH2o7',
              paymentIntentClientSecret: paymentIntentData!['client_secret'],
              customFlow: true,
              appearance: PaymentSheetAppearance(
                colors: PaymentSheetAppearanceColors(background: Colors.greenAccent.shade100)
              ),
              style: ThemeMode.light,
              primaryButtonLabel: 'Pay $value Tk',
              merchantDisplayName: 'SARWAR'));

      ///now finally display payment sheeet
      displayPaymentSheet();
    } catch (e) {
      print('Exception ' + e.toString());
    }
  }

//===================================================================
//=================== displayPaymentSheet()   =======================
//===================================================================

  displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      setState(() {
        paymentIntentData = null;
      });
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(
            content: Text("Paid successfully"),
            backgroundColor: Colors.green,
            ));
    } on StripeException catch (e) {
      print('Exception/DISPLAYPAYMENTSHEET==> $e');
      showDialog(
          context: context,
          builder: (_) => const AlertDialog(
                content: Text("Cancelled"),
              ));
    } catch (e) {
      print(e.toString());
    }
  }

//===================================================================
//===================     createPaymentIntent  ======================
//===================================================================

  createPaymentIntent(String amount, String currency) async {
    try {
      Map<String, dynamic> body = {
        'amount': calculateAmount(amount),
        'currency': currency,
        'payment_method_types[]': 'card',
      };
      print(body);
      var response = await http.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: {
            'Authorization':
                'Bearer sk_test_51MfNKcBb06WVShYGm9BmpGtyIXXez2TkdHvQXsDpwqt4ubS7JoIWVdWconDlelriMIPlfKqbbVKJuAiUiVWeTgAc00ddUqH2o7',
            'Content-Type': 'application/x-www-form-urlencoded'
          });
      return jsonDecode(response.body.toString());
    } catch (e) {
      print('exception:' + e.toString());
    }
  }

  calculateAmount(String amount) {
    final a = (int.parse(amount)) * 100;
    return a.toString();
  }
}

//=======================E N D=============================
