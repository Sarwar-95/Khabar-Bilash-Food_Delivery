import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:newapp/terms_and_conditions/terms_and_policy_dialogue.dart';

class TermsAndPolicy extends StatelessWidget {
  const TermsAndPolicy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: TextSpan(
        text: "Be confirm that you are agreeing to our",
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 13,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: " Terms & Conditions ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.grey,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return TermsAndPolicyDialogue(
                      md_file: 'terms_and_conditions.md',
                    );
                  },
                );
              },
          ),
          const TextSpan(
            text: "and ",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 13,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: "Privacy Policy",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.grey,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return TermsAndPolicyDialogue(
                      md_file: 'privacy_policy.md',
                    );
                  },
                );
              },
          ),
        ],
      ),
    );
  }
}
