import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/Cuisines/Pizza/pizza.dart';
import 'package:newapp/Cuisines/Biryani/biryani.dart';
import 'package:newapp/Cuisines/Burgers/burgers.dart';
import 'package:newapp/Cuisines/Cafe/cafe.dart';
import 'package:newapp/Cuisines/Chicken/chicken.dart';
import 'package:newapp/Cuisines/Dessert/dessert.dart';
import 'package:newapp/Cuisines/Kebab/kebab.dart';
import 'package:newapp/Cuisines/Pasta/pasta.dart';
import 'package:newapp/Cuisines/Snack/snack.dart';
import 'package:newapp/Cuisines/Soups/soups.dart';

class foodDelivery extends StatefulWidget {
  const foodDelivery({super.key});

  @override
  State<foodDelivery> createState() => _foodDeliveryState();
}

class _foodDeliveryState extends State<foodDelivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 38, 34, 44),
      //backgroundColor: Colors.deepPurpleAccent,
      //==============(APP BAR)===================
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Food Delivey",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
            color: Colors.white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.card_giftcard),
            color: Colors.white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.white,
            iconSize: 30,
          ),
        ],
      ),

      //==================(Body)====================
      body: Body(),
    );
  }
}

//==================== Body part ======================
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            //========================================
            Container(
              height: 39,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //---1
                  InkWell(
                    onTap: () {
                      print("1");
                    },
                    child: textBar(
                      text: "All",
                    ),
                  ),

                  //---2
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Pizza())));
                    },
                    child: textBar(
                      text: "Pizza",
                    ),
                  ),

                  //---3
                  InkWell(
                    onTap: () {
                      print("3");
                    },
                    child: textBar(
                      text: "Chezz",
                    ),
                  ),

                  //---4
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Burgers())));
                    },
                    child: textBar(
                      text: "Burger",
                    ),
                  ),

                  //---5
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Chicken())));
                    },
                    child: textBar(
                      text: "Chicken",
                    ),
                  ),

                  //---6
                  InkWell(
                    onTap: () {
                      print("6");
                    },
                    child: textBar(
                      text: "Mutton",
                    ),
                  ),
                ],
              ),
            ),
            //-----------------------------------
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250),
              child: Text(
                "Cuisines",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //-----------------------------------
            Container(
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Biryani())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://butteroverbae.com/wp-content/uploads/2020/10/karachi-chicken-biryani-11.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Biryani",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Pizza())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://image.jimcdn.com/app/cms/image/transf/none/path/se48ad1dac4ec41e6/image/id26cda717803ad0a/version/1446263468/image.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Pizza",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Burgers())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://offloadmedia.feverup.com/secretlosangeles.com/wp-content/uploads/2020/05/22093453/montys-e1590707262192.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Burgers",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Cafe())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.nicepng.com/png/detail/10-108300_coffee-png-coffee-cafe-hot-coffee-coffee-cream.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Cafe",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Chicken())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://bigoven-res.cloudinary.com/image/upload/t_recipe-1280/the-best-baked-chicken-legs-729a11.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Chicken",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Pasta())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.healthygffamily.com/wp-content/uploads/2019/02/EBB27FFD-702B-4CE1-AA6D-A32A2333CE78-scaled.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Pasta",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Dessert())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://www.bundabergnow.com/wp-content/uploads/2021/03/Dessert-Eton-Mess-537467632-SML-1920x1282.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Desert",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Snack())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://tennislifemag.com/wp-content/uploads/2019/02/EaHG2gTVcAAXQSp.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Snack",
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Kebab())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "http://www.mykusinamasterrecipes.com/wp-content/uploads/2016/07/Beef-Kebab.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Kebab",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Soups())));
                        },
                        child: Container(
                          height: 105,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: NetworkImage(
                                "http://chooschia.s3.amazonaws.com/2015/10/IMG_0284.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Cuisines(
                        text: "Soups",
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //=====================================================
            SizedBox(
              height: 20,
            ),

            MoreItem(),

            //====================================================
            Padding(
              padding: const EdgeInsets.only(right: 167),
              child: Text(
                "Your daily deals",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            Container(
              height: 190,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                  Card(),
                  SizedBox(
                     width: 20,
                  ),
                  Card(),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            //-----------------------------------
            MoreItem(),
            MoreItem(),
            MoreItem(),
            MoreItem(),
          ],
        ),
      ),
    );
  }
}

//==================== Custom Text Bar (1)=======================
class textBar extends StatelessWidget {
  final String text;
  const textBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent, width: 1),
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[200],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

//======================== Cuisines ==============================

class Cuisines extends StatelessWidget {
  final String text;
  const Cuisines({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

//======================= More Item (2)===========================
class MoreItem extends StatelessWidget {
  const MoreItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage("images/two.jpg"), fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.white, blurRadius: 10, offset: Offset(3, 7)),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Burger",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "KFC",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              Spacer(),
              Container(
                width: 35,
                height: 35,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.favorite_border,
                  size: 20,
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

//================= Card (3)=================
class Card extends StatelessWidget {
  //final AssetImage circleImg;
  Card({
    super.key,
  });

  var ImgList = [
    {"img": "images/one.jpg"},
    {"img": "images/two.jpg"},
    {"img": "images/three.jpg"},
    {"img": "images/five.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 20),
          height: 170,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              //color: Colors.deepPurpleAccent[100],
              color: Color.fromARGB(255, 38, 34, 44),
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    offset: Offset(3, 7)),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                CircleAvatar(
                  //child: circleImg,

                  radius: 50,
                  backgroundImage: AssetImage(ImgList[0]["img"]!),
                ),
                SizedBox(
                  height: 5,
                ),

                Text(
                  "Burger",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                //-------------------------------------------------
                Text(
                  "Royal Kitchen",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.bold),
                ),
                //---------------------------------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                      size: 15,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

//=======================End==========================
