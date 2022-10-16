import 'package:flutter/material.dart';

class AssessmentPrompt extends StatelessWidget {
  AssessmentPrompt();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assessment',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
