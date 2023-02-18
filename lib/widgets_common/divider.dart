import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 2.5,
            endIndent: 10.0
            
          )
        ),       
        
        Text("OR",style: 
        TextStyle(fontSize: 16,
        fontWeight: FontWeight.bold),),        
        
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 2.5,
            indent: 10.0
          )
        ),

      ],
    );
  }
}
