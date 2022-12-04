import 'package:flutter/material.dart';

import './assessment_prompt_screen.dart';
import '../widgets/app_drawer.dart';

/// Created by Jaden Watt (CBU class of '23)
/// Capstone 2022-23
class AssessmentScreen extends StatefulWidget {
  AssessmentScreen();

  static const routeName = '/assessment';

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessment Screen'),
      ),
      body: const Center(
        child: Text(
          'Assessment Screen',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
