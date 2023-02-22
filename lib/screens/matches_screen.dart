import 'package:flutter/material.dart';

import './assessment_screen.dart';
import './home_screen.dart';
import '../widgets/app_drawer.dart';

/// Created by Sam Cartledge and Daddy dame (CBU class of '23)
/// Capstone 2022-23
class MatchesScreen extends StatefulWidget {
  MatchesScreen();

  static const routeName = '/matches-screen';

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          padding: mediaQuery.padding,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background.png'), fit: BoxFit.cover),
          ),
        ),
        // ListView(
        //   // This next line does the trick.
        //   scrollDirection: Axis.horizontal,
        //   children: <Widget>[
        //     Container(
        //       width: 160.0,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 160.0,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       width: 160.0,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       width: 160.0,
        //       color: Colors.yellow,
        //     ),
        //     Container(
        //       width: 160.0,
        //       color: Colors.orange,
        //     ),
        //   ],
        // ),
        Center(
          child: SizedBox(
            height: 200, // card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 0.7),
              onPageChanged: (int index) => setState(() => _index = index),
              itemBuilder: (_, i) {
                return Transform.scale(
                  scale: i == _index ? 1 : 0.9,
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        "Card ${i + 1}",
                        style: TextStyle(fontSize: 32),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
      drawer: AppDrawer(),
    );
  }
}
