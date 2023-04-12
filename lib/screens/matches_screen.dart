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
    double height = MediaQuery.of(context).size.height;
    var padding1 = MediaQuery.of(context).padding;
    double newheight = height - padding1.top - padding1.bottom;
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
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
        Center(
          child: SizedBox(
            height: newheight - 150, // card height
            child: PageView.builder(
              itemCount: 10,
              controller: PageController(viewportFraction: 0.9),
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
                          //damien put the words and stuff here

                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(20.0),
                          //   child: Image.asset('assets/card.png'),
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
