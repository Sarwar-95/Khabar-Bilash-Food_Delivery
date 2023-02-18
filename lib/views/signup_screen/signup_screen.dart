import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newapp/views/home_screen/home_screen.dart';
import '../login_screen/login_screen.dart';

class SignUp extends StatefulWidget {
  SignUp({
    super.key,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _showPassword = false;
  final formKey = GlobalKey<FormState>();

  //===================================================================

  final _userNameController = TextEditingController();

  final _userEmailController = TextEditingController();

  final _userPhoneController = TextEditingController();

  final _userPasswordController = TextEditingController();

  void dispose() {
    super.dispose();
    _userEmailController.dispose();
    _userPasswordController.dispose();
  }

  //===================================================================
  //|..................... F I R E B A S E ...........................|
  //===================================================================

  Future signUp() async {
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: _userEmailController.text.trim(),
            password: _userPasswordController.text.trim())
        .then((value) {
      print("Create New Account");
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => foodDelivery())));
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Successfully Registered")));
  }

  //=================================================================
  //=================================================================
  //=================================================================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false, // bottom overflow
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Column(
            children: [
              //--------------------Container(1)
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                       fontSize: 35,
                       color: Colors.white,
                       fontFamily: 'DeliusSwashCaps',
                       fontWeight: FontWeight.w700)),
                ),
              ),

              //--------------------Container(2)
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 35),
                  child: Form(
                    key: formKey,
                    child: ListView(
                      children: [
                        //--------------------TextField(1)
                        TextFormField(
                          controller: _userNameController,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
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
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                            hintText: 'User Name',
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),

                        //--------------------TextField(2)
                        TextFormField(
                          controller: _userEmailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (email) =>
                              email != null && !EmailValidator.validate(email)
                                  ? "Enter a valid email"
                                  : null,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
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
                        //--------------------TextField(3)
                        TextFormField(
                          controller: _userPhoneController,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w700),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(30)),

                            //--------------------Phone Icon
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.phone,
                                color: Colors.black,
                              ),
                            ),
                            hintText: 'Phone',
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),

                        //--------------------TextField(4)
                        TextFormField(
                          controller: _userPasswordController,

                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) =>
                              value != null && value.length < 6
                                  ? "Enter a min. 6 characters"
                                  : null,
                          obscureText: !this._showPassword, // for password

                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
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
                            hintText: 'Password',
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
                          ),
                        ),

                        SizedBox(
                          height: 30,
                        ),

                        //-----------------------------(Log In Button)--------------------------
                        //======================================================================
                        //======================================================================
                        ElevatedButton(
                            onPressed: () {
                              //--------Firebase
                              signUp();
                            },
                            style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                primary: Colors.black,
                                elevation: 25,
                                shadowColor: Color.fromARGB(255, 77, 13, 225)),
                            child: Text(
                              'Create New Account',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            )),

                        //-----------------------------------------------------------------------
                        
                        SizedBox(
                          height: 25,
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 45),
                          //--------------------Row
                          child: Row(
                            children: [
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),

                              //--------------------Text Button
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
