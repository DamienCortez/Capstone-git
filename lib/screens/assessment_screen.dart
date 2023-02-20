import 'package:flutter/material.dart';

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
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        // foregroundColor: Theme.of(context).primaryColor,
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
              const CircleAvatar(backgroundColor: Colors.white),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
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
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Let\'s learn about your emotions.',
              style: TextStyle(
                fontFamily: 'Belleza',
                fontSize: 48,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'When in need of help I tend to panic.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          PorterSlider(),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'When in need of help I tend to panic.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          PorterSlider(),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'When in need of help I tend to panic.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          PorterSlider(),
          SizedBox(height: 15),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'When in need of help I tend to panic.',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          PorterSlider(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
