import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../cart/order_model.dart';
import '../../../cart/order_page.dart';

class Bustine extends StatelessWidget {
  final track = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.card_giftcard),
        onPressed: (() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return OrderPage();
          }));
        }),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurple[200],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ))),

      //==============================================

      body: Consumer<OrderModel>(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.amber,
            )
          ],
        ),
        builder: (context, value, child) {
          return ListView.builder(
              itemCount: value.itemsBustine.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 135,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        color: Colors.purple.shade50,
                        border: Border.all(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          // Container for image decoration

                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        value.itemsBustine[index][2]),
                                    fit: BoxFit.fill)),
                          ),

                          SizedBox(
                            width: 20,
                          ),
                          //-------------------------------
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //------------------1
                              Text(
                                value.itemsBustine[index][0],
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepPurple),
                              ),
                              //------------------2
                              Text(
                                value.itemsBustine[index][1],
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Row(
                                children: [
                                  Text("Rating :"),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  )
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {
                                  Provider.of<OrderModel>(context,
                                          listen: false)
                                      .cartItemsAdd(index, track);
                                },
                                color: Colors.green.shade200,
                                child: Text("Add"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }));
        },
      ),
    );
  }
}
