import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../cart/order_model.dart';
import '../../../cart/order_page.dart';
import '../../../widgets_common/bottom_navigation_bar.dart';

class Undal extends StatelessWidget {
  const Undal({super.key});

  final int track = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //======================== App Bar ======================
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

      //========================= Body ========================

      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://freshprotino.com/wp-content/uploads/2021/07/Best-Mutton-Biryani-Recipe-1.jpg"),
                      fit: BoxFit.fill),
                ),
              ),

              //-----------------------------------------------
              Positioned(
                bottom: -30,
                child: Container(
                  width: 250,
                  height: 110,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(children: [
                      Text(
                        "Undal Restaurant",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Mirboxtula,Sylhet",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),
          //=======================================================
          Flexible(
            child: Consumer<OrderModel>(
              builder: (context, value, child) {
                return ListView.builder(
                    itemCount: value.itemsUndal.length,
                    itemBuilder: ((context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 135,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              //color: Colors.white,
                              color: Colors.purple.shade50,
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
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
                                              value.itemsUndal[index][2]),
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
                                      value.itemsUndal[index][0],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple),
                                    ),
                                    //------------------2
                                    Text(
                                      "Price :" + value.itemsUndal[index][1],
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
                                            .cartItemsAdd(index,track);
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
          ),
        ],
      ),

      //=========== Bottom Navigation Bar ==========
      //============================================
      //============================================

      bottomNavigationBar: BottomNavigation(),
    );
  }
}
