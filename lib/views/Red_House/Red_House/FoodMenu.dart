import 'package:flutter/material.dart';
import 'package:newapp/views/Red_House/Red_House/popular_food.dart';
import 'package:newapp/views/Red_House/Red_House/rice_bowl.dart';
import 'package:newapp/views/Red_House/Red_House/salad.dart';
import 'package:newapp/views/Red_House/Red_House/soup.dart';

import 'biriyani.dart';


class FoodMenu extends StatefulWidget {
  @override
  State<FoodMenu> createState() => _FoodMenuState();
}

class _FoodMenuState extends State<FoodMenu>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: double.maxFinite,
          color: Colors.black,
          child: TabBar(
            controller: controller,
            isScrollable: true,
            labelPadding: EdgeInsets.only(left: 22),
            tabs: [
              //popular item
              Text(
                textAlign: TextAlign.center,
                "Popular",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //soup item
              Text(
                textAlign: TextAlign.center,
                "Soup",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //biriyani
              Text(
                textAlign: TextAlign.center,
                "Biryani",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //rice bowl
              Text(
                textAlign: TextAlign.center,
                "Rice-Bowl",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //salad
              Text(
                textAlign: TextAlign.center,
                "Salad",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 300,
          child: TabBarView(
            controller: controller,
            children: [
              popular_food(),
              soup(),
              biriyani(),
              ricebowl(),
              salad(),
            ],
          ),
        ),
      ],
    );
  }
}
