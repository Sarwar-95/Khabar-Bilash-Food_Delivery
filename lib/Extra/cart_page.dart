import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Extra/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back))
      ]),

      //--------------------------------------------------
      body: Consumer<cartModel>(
        builder: (context, value, child) {
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: value.cartItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                            child: ListTile(
                              leading: Image.asset(
                                value.cartItems[index][2],
                                height: 50,
                              ),
                              title: Text((value.cartItems[index][0])),
                              subtitle: Text("\$" + value.cartItems[index][1]),
                              trailing: IconButton(
                                icon: Icon(Icons.cancel),
                                onPressed: (() {
                                  Provider.of<cartModel>(context, listen: false)
                                      .removeCartItem(index);
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
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text("Total Price"),
                                    Text(value.calculateTotal())
                                  ],
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
