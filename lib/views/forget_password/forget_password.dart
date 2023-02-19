import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:newapp/views/login_screen/login_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignIn()));
                          },
                          icon: Icon(Icons.arrow_back,),
                          color: Colors.white,
                        ),
                      ),

                     Icon(Icons.lock_reset_outlined,
                            size: 150, 
                            color: Colors.white,),
                      SizedBox(
                        height: 5,
                      ),
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
                          const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: Form(
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            //--------------------TextField(1)
                            TextFormField(
                              controller: _emailController,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
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

                            //-----------------------------(Forget Password)------------------------
                            //======================================================================
                            //======================================================================

                            ElevatedButton(
                                onPressed: () {
                                  try {
                                    FirebaseAuth.instance
                                        .sendPasswordResetEmail(
                                            email: _emailController.text.trim())
                                        .then((value) => {
                                              print("Email Send"),
                                            });
                                  } on FirebaseAuthException catch (e) {
                                    print("Error $e");
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: StadiumBorder(),
                                    primary: Colors.black,
                                    elevation: 25,
                                    shadowColor:
                                        Color.fromARGB(255, 77, 13, 225)),
                                child: Text(
                                  'Forgot Password',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
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
