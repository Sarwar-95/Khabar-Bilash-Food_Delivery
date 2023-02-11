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
import 'package:newapp/Extra/Home_page.dart';
import 'package:newapp/Extra/cart_model.dart';
import 'package:newapp/Extra/practice_1.dart';
import 'package:newapp/order_model.dart';
import 'package:newapp/practice.dart';
import 'package:newapp/provider/app_design.dart';
import 'package:newapp/provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'Cuisines/Biryani/bustine.dart';
import 'Extra/practice_3.dart';
import 'SignIn/signIn.dart';
import 'SignUp/signup.dart';
import 'SplashScreen/splashScreen.dart';
import 'dashboard.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=>CounterApp(),),
      ChangeNotifierProvider(create: (_)=>cartModel()),
      ChangeNotifierProvider(create: (_) => CardItem()),
       ChangeNotifierProvider(create: (_) => OrderModel()), // Main work
      ],
    child: MyApp()) );
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
           
          //Counter()
          //Home(),

          //SignIn()
          //SignUp()

      // ---Cuisines---
      //Biryani(),
          //Undal(),
          //Bustine()
      //Burgers(),
      //Cafe()
      //Chicken()
      //Dessert()
      //Kebab()
      //Pasta()
      //Pizza()
      //Snack()
      //Soups()

      //----Practice------
      //Practice(),
      //HomePage()
      //MyWidget()
    );
  }
}
