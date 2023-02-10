import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

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
                      Padding(
                        padding: const EdgeInsets.only(right: 400),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.arrow_back),
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
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
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        //--------------------TextField(1)
                        TextField(
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
                        SizedBox(
                          height: 25,
                        ),
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
                          height: 25,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                primary: Colors.black,
                                elevation: 25,
                                shadowColor: Color.fromARGB(255, 77, 13, 225)),
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
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
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (BuildContext context) {
                                    //   return signup();
                                    // }));
                                  },
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: Colors.deepOrange,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ))
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black),
                              onPressed: () {},
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
                  ),
                )
              ],
            ),
          ]),
        ));
  }
}
