import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/views/login_screen/login_screen.dart';
import 'package:newapp/views/signup_screen/signup_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially, show the login page
  //bool ShowLogInPage = true;

  void toggleScreens() {
    setState(() {
      //ShowLogInPage = !ShowLogInPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    // if (ShowLogInPage) {
    //   print("Sign In**");
    //   return SignIn(showSignUpPage: toggleScreens);
    //   //return SignUp(showLoginPage: toggleScreens);
    // } else {
    return Container();
    // return SignUp(showLoginPage: toggleScreens);
  }
}
//}
