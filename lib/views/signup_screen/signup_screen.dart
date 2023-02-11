import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController userNameController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  TextEditingController userPhoneController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();

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
                        onPressed: () {},
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
                  child: ListView(
                    children: [
                      //--------------------TextField(1)
                      TextField(
                        controller: userNameController,
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
                      TextField(
                        controller: userEmailController,
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
                      //--------------------TextField(2)
                      TextField(
                        controller: userPhoneController,
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
                      //--------------------TextField(2)
                      TextField(
                        controller: userPasswordController,
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
                      // SizedBox(
                      //   height: 20,
                      // ),
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
                            // var userName =userNameController.text.trim();
                            // var userEmail =userEmailController.text.trim();
                            // var userPhone =userPhoneController.text.trim();
                            // var userPassword =userPasswordController.text.trim();

                            // FirebaseAuth.instance.createUserWithEmailAndPassword(email:
                            //   userEmail, password: userPassword).then((value) =>
                            //   print('User Created')
                            //   );
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
              )
            ],
          ),
        ]),
      ),
    );
  }
}
