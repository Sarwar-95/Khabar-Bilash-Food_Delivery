import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/cart/order_model.dart';
import 'package:newapp/const/colors.dart';
import 'package:newapp/views/payment_gateway/payment_gateway.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (() {
            Navigator.pop(context);
          }),
        ),
      ),

      //--------------------------------------------------
      body: Consumer<OrderModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: value.cartAdd.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white.withOpacity(0.50),
                                ),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.white.withOpacity(0.25),
                                      Colors.white.withOpacity(0.30),
                                    ])),
                            child: ListTile(
                              leading: Image.network(
                                value.cartAdd[index][2],
                                height: 50,
                              ),
                              title: Text(
                                (value.cartAdd[index][0]),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Price :\$" + value.cartAdd[index][1],
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red.shade400,
                                  size: 30,
                                ),
                                onPressed: (() {
                                  Provider.of<OrderModel>(context,
                                          listen: false)
                                      .removeItem(index);
                                }),
                              ),
                            ),
                          ),
                        );
                      })),
              Padding(
                padding: EdgeInsets.all(36.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total5 Price",
                              style: TextStyle(color: Colors.green[100]),
                            ),
                            Text(
                              value.calculate(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),

                        //  Click the button of pay now
                        // then navigate to payment_gateway
                        GestureDetector(
                          onTap: () {
                            String getValue = value.calculate();

                            //--------------------------------
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentGateway(
                                          pymentValue: getValue,
                                        )));
                            //--------------------------------
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent[200],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Row(
                                children: [
                                  Text(
                                    "Pay Now",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 16,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
