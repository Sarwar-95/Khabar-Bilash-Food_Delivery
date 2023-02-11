import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/const/colors.dart';
import 'package:newapp/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  //---------------------Navigation to log in page-----------------
  @override
   void initState() {
     super.initState();
     Timer(
       Duration(seconds: 5),
       (() => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (
         (BuildContext context) => foodDelivery()))))
     );
   }

  //----------------------------------------------------------------


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BackgroundColor,
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 150),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                     //color: Colors.black,
                      borderRadius: BorderRadius.circular(150),
                      image: DecorationImage(
                        image: AssetImage("images/delivery.png"),
                        fit: BoxFit.fill)
                      ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Text(
                "KHABAR-BILASH",
                style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 7,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),

              SizedBox(
                height: 35,
              ),

              //------------------------------
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
              //------------------------------

              SizedBox(
                height: 25,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Text(
                    "@copyright2023",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                        color: Colors.white),
                  ))
            ],
          ),
        ));
  }
}
