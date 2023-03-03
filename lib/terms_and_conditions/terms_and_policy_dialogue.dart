import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';


class TermsAndPolicyDialogue extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const TermsAndPolicyDialogue({super.key, required this.md_file});

  // ignore: non_constant_identifier_names
  final String md_file;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: Future.delayed(
                const Duration(seconds: 1),
              ).then(
                (value) {
                  return rootBundle.loadString(
                    'assets/md_files/$md_file',
                  );
                },
              ),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Markdown(
                    data: snapshot.data!,
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
          ElevatedButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
