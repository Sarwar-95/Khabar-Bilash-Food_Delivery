import 'package:flutter/material.dart';
import 'package:newapp/const/colors.dart';
import 'package:newapp/views/Red_House/Red_House/FoodMenu.dart';
import 'package:newapp/views/Red_House/Red_House/slideview.dart';

class redhouse extends StatefulWidget {
  @override
  State<redhouse> createState() => _redhouseState();
}

class _redhouseState extends State<redhouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 40, bottom: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "RED HOUSE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            slideview(),
            FoodMenu(),
          ],
        ),
      ),
    );
  }
}
