import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/Cuisines/Biryani/undal.dart';
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
import 'SignIn/signIn.dart';
import 'SignUp/signup.dart';
import 'SplashScreen/splashScreen.dart';
import 'dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          //-----------------------
          //foodDelivery(),
          //----------------------
          SplashScreen(),

          // SignIn()
          //SignUp()

      // ---Cuisines---
      //Biryani(),
      //Undal(),
      //Burgers(),
      //Cafe()
      //Chicken()
      //Dessert()
      //Kebab()
      //Pasta()
      //Pizza()
      //Snack()
      //Soups()
    );
  }
}
