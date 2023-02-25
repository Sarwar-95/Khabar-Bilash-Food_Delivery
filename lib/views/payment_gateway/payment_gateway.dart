import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:newapp/const/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, dynamic>? paymentIntentData;
  //---------------------------------------------
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: BackgroundColor,
      // appBar: AppBar(
      //   title: const Text('Stripe Tutorial'),
      // ),
      body: Center(
        child: InkWell(
          onTap: () async {
            await makePayment(); //future function calling
          },
          child: Container(
            height: 50,
            width: 200,
            color: ButtonColor,
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

  Future<void> makePayment() async {
    try {
      paymentIntentData =
          await createPaymentIntent('20', 'USD'); //json.decode(response.body
          await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              //setupIntentClientSecret: 'sk_test_51MfNKcBb06WVShYGm9BmpGtyIXXez2TkdHvQXsDpwqt4ubS7JoIWVdWconDlelriMIPlfKqbbVKJuAiUiVWeTgAc00ddUqH2o7',
              paymentIntentClientSecret: paymentIntentData!['client_secret'],
              // applePay: true,
              // googlePay: true,
              customFlow: true,
              style: ThemeMode.dark,
              //merchantCountryCode: 'US',
              merchantDisplayName: 'SARWAR'));
      

      ///now finally display payment sheeet
      displayPaymentSheet();
    } catch (e) {
      print('exception' + e.toString());
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
            .showSnackBar(const SnackBar(content: Text("Paid successfully")));
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
