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
                image: AssetImage('assets/background-nologo.png'),
                fit: BoxFit.cover),
          ),
        ),
        Center(
          child: SizedBox(
            height: 460, // card height
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
                      child: Padding(
                        padding: EdgeInsets.all(0.0),
                        child: Column(children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset('assets/card.png'),
                          ),

                          // Text(
                          //   "Jessica Gaddy",
                          //   style: TextStyle(fontSize: 32),
                          // ),
                        ]),
                      ),
                    ));
              },
            ),
          ),
        ),
      ]),
      drawer: AppDrawer(),
    );
  }
}
