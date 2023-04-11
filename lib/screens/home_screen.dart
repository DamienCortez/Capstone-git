import 'package:flutter/material.dart';

import 'assessment.dart';
import './assessment_prompt_screen.dart';
import '../widgets/app_drawer.dart';

/// Created by Jaden Watt (CBU class of '23)
/// Capstone 2022-23
class HomeScreen extends StatefulWidget {
  HomeScreen();

  static const routeName = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text(
          'Home Screen',
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
