import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/firebase/auth/google_signin.dart';
import 'package:newapp/views/Red_House/Red_House/redhouse.dart';
import 'package:newapp/views/cuisines_part/pizza/pizza.dart';
import 'package:newapp/views/cuisines_part/biryani/biryani.dart';
import 'package:newapp/views/cuisines_part/burgers/burgers.dart';
import 'package:newapp/views/cuisines_part/cafe/cafe.dart';
import 'package:newapp/views/cuisines_part/chicken/chicken.dart';
import 'package:newapp/views/cuisines_part/dessert/dessert.dart';
import 'package:newapp/views/cuisines_part/kebab/kebab.dart';
import 'package:newapp/views/cuisines_part/pasta/pasta.dart';
import 'package:newapp/views/cuisines_part/snack/snack.dart';
import 'package:newapp/views/cuisines_part/soups/soups.dart';
import 'package:newapp/const/colors.dart';
import 'package:newapp/cart/order_page.dart';
import 'package:newapp/views/login_screen/login_screen.dart';
import 'package:newapp/widgets_common/bottom_navigation_bar.dart';

class foodDelivery extends StatefulWidget {
  const foodDelivery({super.key});

  @override
  State<foodDelivery> createState() => _foodDeliveryState();
}

class _foodDeliveryState extends State<foodDelivery> {
//====================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,

        //==============( Drawer )===================
        //==========================================
        //==========================================
        drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: BackgroundColor),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.black,
                     backgroundImage: AssetImage("images/delivery.png"),
                    ),
                    accountName: Text(""),
                    // accountName:
                    //     Text(FirebaseAuth.instance.currentUser!.displayName!),
                    accountEmail:
                        Text(FirebaseAuth.instance.currentUser!.email!)),
                ListTile(
                  leading: Icon(Icons.logout_outlined,
                      color: Colors.black, size: 22),
                  title: Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onTap: () {
                    //===================================================================
                    //|..................... F I R E B A S E ...........................|
                    //===================================================================

                    FirebaseServices().googleSignOut();

                    //===================================================================

                    FirebaseAuth.instance.signOut();

                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignIn()));

                    //===================================================================
                  },
                )
              ],
            )),

        //==============(APP BAR)===================
        //==========================================
        //==========================================
        appBar: AppBar(
          elevation: 0,
          title: Center(
            child: Text(
              "Khabar-Bilash",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.white,
              iconSize: 22,
            ),

            //****************************************************/
          ],
        ),

        //==================(Body)====================
        //============================================
        //============================================
        body: Body(),

        //=========== Bottom Navigation Bar ==========
        //============================================
        //============================================

        bottomNavigationBar: BottomNavigation());
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
              height: 35,
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
                "Special Order",
                style: TextStyle(
                  fontSize: 15,
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
                        text: "Rice-Bowl",
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

            //==================== Restaurants 1 ======================

            //==================== Restaurants  ======================
            GestureDetector(
              onTap: () {
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => redhouse()))); 
              },
              child: Container(
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
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(3, 7)),
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
                              "Red",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "House",
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
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
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
              ),
            ),
            //==================== Restaurants  2 ======================
            GestureDetector(
              onTap: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => redhouse()))); 
              },
              child: Container(
                height: 170,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/six.jpg"), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(3, 7)),
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
                              "Royal",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Kitchen",
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
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
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
              ),
            ),

            //==================== Restaurants  3 ======================
            GestureDetector(
              onTap: () {
                Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => redhouse()))); 
              },
              child: Container(
                height: 170,
                width: double.infinity,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage("images/seven.jpg"), fit: BoxFit.cover),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                          offset: Offset(3, 7)),
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
                              "Alpine",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Restaurant",
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
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}

//-------------------------( Start )---------------------------

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

//=======================End==========================
//=======================End==========================
//=======================End==========================