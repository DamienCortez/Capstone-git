import 'package:flutter/material.dart';

import './assessment_screen.dart';
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
        actions: [
          // Container(
          //   width: 30,
          //   child: Image.asset(
          //     'assets/images/profile_pic.png',
          //   ),
          // ),
          Icon(Icons.account_circle_rounded, size: 40),
        ],
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
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        child: Row(children: [
          Icon(Icons.home_outlined, size: 40),
          Icon(Icons.home_outlined, size: 40),
          Icon(Icons.home_outlined, size: 40),
          Icon(Icons.home_outlined, size: 40),
        ]),

        //Icon(Icons.home_outlined, size: 40),
      ),
    );
  }
}
