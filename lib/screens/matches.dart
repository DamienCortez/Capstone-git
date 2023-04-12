import 'package:flutter/material.dart';

import './assessment_screen.dart';
import './home_screen.dart';
import '../widgets/app_drawer.dart';
import '../constants/matchesconstant.dart';

/// Created by Sam Cartledge and Daddy dame (CBU class of '23)
/// Capstone 2022-23
class Matches extends StatefulWidget {
  Matches();

  static const routeName = '/matches';

  @override
  State<Matches> createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  PageController _controller;
  int currentIndex = 0;
  int _index = 0;
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
    double height = MediaQuery.of(context).size.height;
    var padding1 = MediaQuery.of(context).padding;
    double newheight = height - padding1.top - padding1.bottom;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: Stack(children: <Widget>[
        Container(
          padding: mediaQuery.padding,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background-nologo.png'),
                fit: BoxFit.cover),
          ),
        ),
        Column(children: <Widget>[
          SizedBox(height: 120),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: matches.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                  print('PAGE CHANGED to: $currentIndex');
                });
              },
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                    child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      matches[index],
                    ],
                  ),
                ));
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
                      matches.length,
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
                      currentIndex == matches.length - 1 ? 'Submit' : 'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ])
      ]),
      drawer: AppDrawer(),
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
          color: currentIndex == index
              ? Color.fromARGB(255, 212, 87, 33)
              : Colors.white70,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
