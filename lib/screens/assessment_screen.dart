import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

import '../widgets/app_drawer.dart';
import '../widgets/porter_slider.dart';

/// Created by Jaden Watt (CBU class of '23)
/// Capstone 2022-23
class AssessmentScreen extends StatefulWidget {
  AssessmentScreen();

  static const routeName = '/assessment';

  @override
  State<AssessmentScreen> createState() => _AssessmentScreenState();
}

class _AssessmentScreenState extends State<AssessmentScreen> {
  var _rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: PageView(
        children: [
          Scaffold(
            backgroundColor: Theme.of(context).cardColor,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'STAGE 1 OF 9',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  indent: 15,
                  endIndent: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Let\'s learn about your emotions.',
                    style: TextStyle(
                      fontFamily: 'Belleza',
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                    'Phyisical wellness is about adopting healthy habits such as routine medical exams, adequate sleep, a balanced diet, regular exercise, and more.',
                    style: TextStyle(
                      fontFamily: 'Belleza',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 50),
                PorterSlider(),
              ],
            ),
          ),
          Scaffold(
            backgroundColor: Theme.of(context).cardColor,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'STAGE 2 OF 9',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  indent: 15,
                  endIndent: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Let\'s learn about your emotions.',
                    style: TextStyle(
                      fontFamily: 'Belleza',
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                  ),
                  child: Text(
                    'Mental/Emotional wellness encompasses optimism, self-esteem, self-acceptance, and the ability to experience and cope with feelings independently and interpersonally.',
                    style: TextStyle(
                      fontFamily: 'Belleza',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 50),
                PorterSlider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
