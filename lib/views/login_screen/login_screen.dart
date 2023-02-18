import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:newapp/firebase/auth/google_signin.dart';
import 'package:newapp/views/forget_password/forget_password.dart';
import 'package:newapp/views/home_screen/home_screen.dart';
import 'package:newapp/views/splash_screen/splash_screen.dart';
import 'package:newapp/widgets_common/divider.dart';
import 'package:newapp/widgets_common/text_rich.dart';
import 'package:provider/provider.dart';
import '../signup_screen/signup_screen.dart';

class SignIn extends StatefulWidget {
  SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _showPassword = false;
  //=================================================================
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  //=================================================================

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    //---------------------------------------------

    final user = FirebaseAuth.instance.currentUser;

    //----------------------------------------------
    return Scaffold(
        backgroundColor: Colors.black,
        resizeToAvoidBottomInset: false, // bottom overflow
        body: Container(
          child: Stack(children: [
            Column(
              children: [
                //--------------------Container(1)
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  width: double.infinity,
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 35, left: 30),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 35,
                                color: Colors.white,
                                fontFamily: 'DeliusSwashCaps',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Center(
                          child: Text(
                            'Welcome Back',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'DeliusSwashCaps',
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //--------------------Container(2)
                Container(
                  height: MediaQuery.of(context).size.height * .7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, right: 25, top: 40),
                      // Form key
                      child: Form(
                        key: _formkey,
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            //--------------------TextField(1)
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter your email";
                                }
                                return null;
                              },
                              controller: _emailController,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(30)),

                                //--------------------Email Icon
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.email,
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: 'Email',
                              ),
                            ),

                            SizedBox(
                              height: 25,
                            ),
                            //--------------------TextField(2)
                            TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter your password";
                                }
                                return null;
                              },
                              controller: _passController,
                              obscureText: !this._showPassword, // for password
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),

                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(30)),

                                //--------------------Lock Icon
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.lock,
                                    color: Colors.black,
                                  ),
                                ),

                                suffixIcon: IconButton(
                                  onPressed: (() {
                                    setState(() {
                                      this._showPassword = !this._showPassword;
                                    });
                                  }),
                                  icon: Icon(Icons.remove_red_eye),
                                  color: this._showPassword
                                      ? Colors.blue
                                      : Colors.grey,
                                ),

                                hintText: 'Password',
                              ),
                            ),

                            //-----------------------------------------------------------

                            SizedBox(
                              height: 20,
                            ),

                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return ForgetPassword();
                                  }));
                                },
                                child: Text(
                                  "Forget Password?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextRich(),
                            SizedBox(
                              height: 20,
                            ),
                            //-----------------------------(Log In Button)--------------------------
                            //======================================================================
                            ElevatedButton(
                                onPressed: () {
                                  //===================================================================
                                  //|..................... F I R E B A S E ............................|
                                  //|===================================================================
                                  //|==================================================================|

                                  try {
                                    FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: _emailController.text.trim(),
                                            password:
                                                _passController.text.trim()).then((value) => foodDelivery());
                                  // Navigator.push(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) => foodDelivery()));
                                  }
                                   
                                  on FirebaseAuthException catch (e) {

                                    if (e.code == 'user-not-found') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  "No user found for that email")));
                                    } else if (e.code == 'wrong-password') {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                              content: Text(
                                                  "Wrong password buddy")));
                                    }
                                  }
                                 
                                  if (_formkey.currentState!.validate()) {
                                    print("Log in successfully!!!");
                                  }

                                  //==================================================================
                                  //==================================================================
                                  //==================================================================
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    primary: Colors.black,
                                    elevation: 25,
                                    shadowColor:
                                        Color.fromARGB(255, 77, 13, 225)),
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),

                            //-----------------------------------------------------------------------
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              //--------------------Row
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have acoount?",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),

                                  //--------------------Text Button
                                  TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder:
                                                (BuildContext context) {
                                          return SignUp();
                                        }));
                                      },
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(
                                            //decoration: TextDecoration.underline,
                                            color: Colors.deepOrange,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ],
                              ),
                            ),

                            //----------------
                            DividerWidget(),
                            SizedBox(
                              height: 20,
                            ),
                            //----------------

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 60),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black),
                                  onPressed: () async {
                                    //..........................................
                                    await FirebaseServices().signInWithGoogle();
                                    //..........................................

                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                foodDelivery()));
                                  },
                                  child: Row(
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.google,
                                        color: Color.fromARGB(255, 213, 78, 68),
                                      ),
                                      Text("  Sign Up with Google")
                                    ],
                                  )),
                            )
                          ],
                        ),
                      )),
                )
              ],
            ),
          ]),
        ));
  }
}
