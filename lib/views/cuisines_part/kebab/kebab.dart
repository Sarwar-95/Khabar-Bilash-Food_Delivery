import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../const/colors.dart';
import '../../../widgets_common/bottom_navigation_bar.dart';

class Kebab extends StatelessWidget {
  const Kebab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor ,
      //=========== Bottom Navigation Bar ==========
      //============================================
      //============================================

       bottomNavigationBar: BottomNavigation(),

      //======================== App Bar ======================
        appBar: AppBar(
            elevation: 1,
            backgroundColor: RrestaurantAppBarColor,
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //----------------------------------------
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 185,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://www.americangarden.us/wp-content/uploads/Adana-Kebab.jpg"),
                            fit: BoxFit.fill),
                        //fit:BoxFit.cover,
                      ),
                      //============= Text and icon on image ==========================
                      child: TextOnImage(
                        offerText: "25% OFF",
                        duration: "20 min",
                      ),
                    ),

                    //--------------TextItem()
                    TextItem(
                      text: "Undal Restaurant",
                      rating: "4.0",
                      number: " (545+)",
                      tk: "40",
                    ),
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                //--------------------------------------
                Column(
                  children: [
                    Container(
                      height: 185,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://big.com.my/wp-content/uploads/2020/09/20200818_BIG-Mediterranean1989-1-2000x1108.jpg"),
                            fit: BoxFit.fill),
                      ),

                      //============= Text and icon on image ==========================
                      child: TextOnImage(
                        offerText: "15% OFF",
                        duration: "5 min",
                      ),
                    ),

                    //-------------TextItem()
                    TextItem(
                      text: "Panshi Restaurant",
                      rating: "5.0",
                      number: " (1365+)",
                      tk: "30",
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                Column(
                  children: [
                    Container(
                      height: 185,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        //color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://theurbantandoor.com/wp-content/uploads/2019/11/hariyali-kebab.jpg"),
                            fit: BoxFit.fill),
                      ),
                      //============= Text and icon on image ==========================
                      child: TextOnImage(
                        offerText: "20% OFF",
                        duration: "20 min",
                      ),
                    ),

                    //-------------TextItem()
                    TextItem(
                      text: "Pach Bhai Restaurant",
                      rating: "5.0",
                      number: " (2365+)",
                      tk: "80",
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

class TextItem extends StatelessWidget {
  final String text, rating, number, tk;
  const TextItem(
      {super.key,
      required this.text,
      required this.rating,
      required this.tk,
      required this.number});

   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        //========================Row1
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: PrimaryTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            SizedBox(
              height: 5,
            ),
            //====================Row1
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: RatingColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  rating,
                  style: TextStyle(
                      color: RatingColor, fontWeight: FontWeight.bold),
                ),
                Text(
                  number,
                  style: TextStyle(color: SecondaryTextColor),
                )
              ],
            )
          ],
        ),

        //====================Row2

        SizedBox(
          height: 5,
        ),

        Row(
          children: [
            Text(
              "Sylhet Bangladesh",
              style: TextStyle(color: SecondaryTextColor),
            ),
          ],
        ),

        SizedBox(
          height: 5,
        ),
        //========================Row3
        Row(
          children: [
            Icon(
              Icons.directions_bike_outlined,
              color: PrimaryTextColor,
              size: 15,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              tk,
              style: TextStyle(color: SecondaryTextColor),
            )
          ],
        )
      ],
    );
  }
}

//============================ Text and Icon on image =======================

class TextOnImage extends StatelessWidget {
  final String offerText, duration;
  const TextOnImage(
      {super.key, required this.offerText, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        offerText,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 25,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Center(
                          child: Text(
                            duration,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: Icon(
                    Icons.favorite_border,
                    size: 20,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
