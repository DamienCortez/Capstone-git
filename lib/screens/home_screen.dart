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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined),
                iconSize: 32,
                color: Colors.black,
              ),
              const CircleAvatar(
                backgroundColor: Colors.black,
                backgroundImage: AssetImage('assets/headshot.jpeg'),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Home.png'), fit: BoxFit.cover),
          ),
        ),
      ]),
      drawer: AppDrawer(),
    );
  }
}
