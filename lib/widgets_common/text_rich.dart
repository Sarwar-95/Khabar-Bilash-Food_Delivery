import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextRich extends StatelessWidget {
  const TextRich({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
          text: 'I agree with ', style: TextStyle(
          fontSize: 18, color: Colors.black,
          fontWeight: FontWeight.bold
        ),
          children: <TextSpan>[
            TextSpan(
              text: 'Terms & Conditions', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18, color: Colors.blue,
            ),

            ),
          ]
    ));
  }
}
