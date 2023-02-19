import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:newapp/const/colors.dart';
import 'package:newapp/views/login_screen/login_screen.dart';
import '../home_screen/home_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        /************************111*****************************/
        PageViewModel(   
          title: "",
          body: "Browse the menu \n"
          "and order directly form \n"
          "the application",
          image: Image.asset("images/onboarding_img/menu.png"),

          //------- Design Part -------
            decoration: PageDecoration(
            pageColor:Colors.yellow.shade800,
            //.........................
            bodyTextStyle: 
            TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              fontFamily:'Phudu', 
              color: Colors.white
            ),
             //.........................
            imagePadding: EdgeInsets.only(top: 120,),
            titlePadding: EdgeInsets.all(0),
          ),

        ),


         /************************222****************************/
         PageViewModel(
          title: "",
         
          body: "Your order will be \n"
          "immediately collected and \n"
          "sent by our corier",
          image: Image.asset("images/onboarding_img/courier.png"),

                   //------- Design Part -------
            decoration: PageDecoration(
            //pageColor:BackgroundColor,
            pageColor: Colors.deepOrange.shade300,
            
            //.........................
            bodyTextStyle: 
            TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              fontFamily:'Phudu', 
              color: Colors.white
            ),
             //.........................
            imagePadding: EdgeInsets.only(top: 120,),
            titlePadding: EdgeInsets.all(0)
          ),

        ),

         
         /***************************333**************************/
         PageViewModel(
          title: "",
          
          body: "Pick up delivery \n"
          "at your door and enjoy \n"
          "groceries",
          image: Image.asset("images/onboarding_img/PickUp.png"),
            //------- Design Part -------
            decoration: PageDecoration(
            pageColor:Colors.lightBlueAccent,

            //.........................
            bodyTextStyle: 
            TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w500,
              fontFamily:'Phudu', 
              color: Colors.white
            ),
             //.........................
            imagePadding: EdgeInsets.only(top: 80,),
            titlePadding: EdgeInsets.all(0),
          ),


        ),

        
      ],
    
    //===============================================================
    //===============================================================
    //===============================================================
      globalBackgroundColor: Colors.black12,
      
      dotsDecorator: DotsDecorator(
        color: Colors.white,
        activeColor: Colors.orange
        ),

      done: Text("Done",style: TextStyle(color: Colors.orange,fontSize: 20)),
      
      next: Text("Next",style: TextStyle(color: Colors.orange,fontSize: 20)),
      
      //--------------------- Navigate ------------------------
      onDone: () {
        Navigator.push(context, MaterialPageRoute(
        builder: (context) => SignIn()
        
        
        ));
      },
    );
  }
}
