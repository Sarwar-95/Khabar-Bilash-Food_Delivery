import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../login_screen/login_screen.dart';

class SignUp extends StatefulWidget {
  final VoidCallback showLoginPage;

  SignUp({super.key, required this.showLoginPage});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

  Future signUp() async {

    final isValid = formKey.currentState!.validate();
    if (isValid) return;

    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _userEmailController.text.trim(),
        password: _userPasswordController.text.trim());

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Successfully Registered")));
  }

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
                //height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  color: Colors.black,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      'Signup',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),

              //--------------------Container(2)
              Container(
                //height: 472,
                width: double.infinity,
                // height: double.infinity,
                height: MediaQuery.of(context).size.height * .8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
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
                          // autovalidateMode: AutovalidateMode.onUserInteraction,
                          // validator: (value) =>
                          //     value != null && value.length < 6
                          //         ? "Enter a min. 6 characters"
                          //         : null,
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
                          //controller: _passController,
                          controller: _userPasswordController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) =>
                              value != null && value.length < 6
                                  ? "Enter a min. 6 characters"
                                  : null,
                          obscureText: true, // for password
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
                          ),
                        ),

                        //-----------------------------------------------------------

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Remind me next time',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Switch(
                                activeColor: Colors.white,
                                activeTrackColor: Colors.black,
                                value: true,
                                onChanged: (value) {})
                          ],
                        ),
                        //-----------------------------(Log In Button)--------------------------

                        SizedBox(
                          height: 10,
                        ),

                        ElevatedButton(
                            onPressed: () {
                              signUp();
                              //isLogin ? SignIn() : SignUp();

                              //print("Successfully registered");

                              // signUptoFirebase();
                              // var userName = _userNameController.text.trim();
                              // var userEmail = _userEmailController.text.trim();
                              // var userPhone = _userPhoneController.text.trim();
                              // var userPassword =
                              //     _userPasswordController.text.trim();

                              // showDialog(
                              //     context: context,
                              //     barrierDismissible: false,
                              //     builder: ((context) {
                              //       return Center(
                              //         child: CircularProgressIndicator(),
                              //       );
                              //     }));

                              // try {
                              //   FirebaseAuth.instance
                              //       .createUserWithEmailAndPassword(
                              //           email:_userEmailController.text.trim(),
                              //           password:_userPasswordController.text.trim());
                              // } on FirebaseAuthException catch (e) {
                              //   print(e);
                              // }

                              // FirebaseFirestore.instance
                              //     .collection("users")
                              //     .doc()
                              //     .set(
                              //   {
                              //     'userName': userName,
                              //     'userPhone': userPhone,
                              //     'userEmail': userEmail,
                              //   },
                              // );
                              print("Data Stored to firebase");
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
                                    widget.showLoginPage;
                                    print("Hello! widget.showLoginPage");
                                    //Navigator.of(context).pop();
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
