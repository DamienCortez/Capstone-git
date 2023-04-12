import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

import '../widgets/app_drawer.dart';
import '../widgets/porter_slider.dart';
import './assessment_screen.dart';
import '../constants/constants.dart';

/// Created by Jaden Watt (CBU class of '23)
/// Capstone 2022-23
class Assessment extends StatefulWidget {
  Assessment();

  static const routeName = '/assessment';

  @override
  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  PageController _controller;
  int currentIndex = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).cardColor,
        elevation: 0,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_outlined),
                iconSize: 32,
                // color: Colors.white,
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/headshot.jpeg'),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: assessments.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                  print('PAGE CHANGED to: $currentIndex');
                });
              },
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      assessments[index],
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              15.0,
              5.0,
              15.0,
              15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: List.generate(
                      assessments.length,
                      (index) => buildDot(index, context),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                  child: TextButton(
                    onPressed: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                    child: Text(
                      currentIndex == assessments.length - 1
                          ? 'Submit'
                          : 'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildDot(int index, BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.jumpToPage(index);
      },
      child: Container(
        margin: EdgeInsets.all(2.0),
        height: 10,
        // width: 10,
        width: currentIndex == index ? 20 : 10,
        decoration: BoxDecoration(
          color: currentIndex == index ? Colors.orange : Colors.white70,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
