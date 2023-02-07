import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Undal extends StatelessWidget {
  const Undal({super.key});

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

      body: SingleChildScrollView(
        //padding: EdgeInsets.all(20),
        //============== First Column ================
        child: Column(
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

            //============= Container ==============
            Card(
              img: DecorationImage(
                  image: NetworkImage(
                      "https://thebusybaker.ca/wp-content/uploads/2017/03/easy-teriyaki-chicken-rice-bowls-fbig1.jpg"),
                  fit: BoxFit.fill),
              text: "Chicken Rice Bowls",
              price: "Price : 260",
            ),
            
            
            //----------------------------------------

            Card(
              img: DecorationImage(
                  image: NetworkImage(
                      "https://i1.wp.com/healthyvegrecipes.com/wp-content/uploads/2014/05/IMG_1152.jpg"),
                  fit: BoxFit.fill),
              text: "Brown Rice Bowls",
              price: "Price : 200",
            ),

            //----------------------------------------

            Card(
              img: DecorationImage(
                  image: NetworkImage(
                      "https://data.thefeedfeed.com/static/2020/04/16/15870736275e98d25b874a7.JPG"),
                  fit: BoxFit.fill),
              text: "Vegetable Fried Rice",
              price: "Price : 160",
            ),

            //----------------------------------------

            Card(
              img: DecorationImage(
                  image: NetworkImage(
                      "https://thebusybaker.ca/wp-content/uploads/2017/03/easy-teriyaki-chicken-rice-bowls-fbig1.jpg"),
                  fit: BoxFit.fill),
              text: "Chicken Rice Bowls",
              price: "Price : 260",
            ),

            //----------------------------------------
          ],
        ),
      ),
    );
  }
}

//===================== Custom Widget =====================

class Card extends StatelessWidget {
  final DecorationImage img;
  final String text,price;
  const Card({super.key, 
  required this.img,
  required this.text,
  required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
            //color: Colors.white,
            color:Colors.purple.shade50,
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
                    image: img
                    // DecorationImage(
                    //     image: NetworkImage(
                    //         "https://thebusybaker.ca/wp-content/uploads/2017/03/easy-teriyaki-chicken-rice-bowls-fbig1.jpg"),
                    //     fit: BoxFit.fill)
                    ),
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
                    text,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                  //------------------2
                  Text(
                    price,
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
