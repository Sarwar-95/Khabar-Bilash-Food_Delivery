import 'package:firebase_core/firebase_core.dart';
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
import 'package:newapp/views/forget_password/forget_password.dart';
import 'package:newapp/views/onboarding_screen/onboarding_screen.dart';
import 'package:provider/provider.dart';
import 'Extra/practice_3.dart';
import 'views/login_screen/login_screen.dart';
import 'views/signup_screen/signup_screen.dart';
import 'views/splash_screen/splash_screen.dart';
import 'views/home_screen/home_screen.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //---------------------------------------
  //---------------------------------------
  // Add publish key of stripe
  Stripe.publishableKey = "pk_test_51MfNKcBb06WVShYGyiMpYue9xtFD6BMcKeV4sDKLRc1bFN2JOLrqUfdsdORiv8DIHQVXlNwDWvJ50Xswq9BHi7wg002Pb3WHcd";
  Stripe.instance.applySettings();
  //Stripe Payment Gateway
  //------------------------------->>>

  // Firebase---

  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    //ChangeNotifierProvider(create: (_)=>CounterApp(),),
    //ChangeNotifierProvider(create: (_)=>cartModel()),
    //ChangeNotifierProvider(create: (_) => CardItem()),
    ChangeNotifierProvider(create: (_) => OrderModel()), // Main work
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  final navigatorKey = GlobalKey<NavigatorState>();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:

          //-----------------------
          //foodDelivery(),
          //----------------------
          SplashScreen(),
      //OnBoardingScreen()
      //ForgetPassword()
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
