import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/views/cuisines_part/biryani/undal.dart';
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
import 'package:newapp/Extra/Home_page.dart';
import 'package:newapp/Extra/cart_model.dart';
import 'package:newapp/Extra/practice_1.dart';
import 'package:newapp/cart/order_model.dart';
import 'package:newapp/Extra/practice.dart';
import 'package:newapp/provider/app_design.dart';
import 'package:newapp/provider/counter_provider.dart';
import 'package:provider/provider.dart';
import 'views/cuisines_part/biryani/bustine.dart';
import 'Extra/practice_3.dart';
import 'views/login_screen/login_screen.dart';
import 'views/signup_screen/signup_screen.dart';
import 'views/splash_screen/splash_screen.dart';
import 'views/home_screen.dart/home_screen.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      //ChangeNotifierProvider(create: (_)=>CounterApp(),),
      //ChangeNotifierProvider(create: (_)=>cartModel()),
      //ChangeNotifierProvider(create: (_) => CardItem()),
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
