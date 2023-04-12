import 'package:flutter/material.dart';

import './assessment.dart';
import './home_screen.dart';

/// Created by Jaden Watt (CBU class of '23)
/// Capstone 2022-23
class AssessmentPrompt extends StatefulWidget {
  AssessmentPrompt();

  static const routeName = '/assessment-prompt';

  @override
  State<AssessmentPrompt> createState() => _AssessmentPromptState();
}

class _AssessmentPromptState extends State<AssessmentPrompt> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: mediaQuery.padding,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Container(
              height: mediaQuery.size.height * 0.88,
              width: mediaQuery.size.width * 0.9,
              padding: mediaQuery.padding,
              child: Card(
                color: Theme.of(context).cardColor,
                //margin: EdgeInsets.all(5.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),

                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text(
                        'Wellness isn\'t one-size-fits-all.',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            //color: Color.fromARGB(255, 181, 250, 217)),
                            color: Color.fromRGBO(188, 243, 217, 1)),
                        textAlign: TextAlign.left,
                      ),
                      const Text(
                        'At Porter, we are transforming your wellness journey by eliminating the guesswork in how to start and presenting it through multiple lenses.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Inter',
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        'Porter’s user-driven questionnaire takes a fun and interactive approach to learning the wellness needs of the individual and forms a curated dream team of providers bases on studies dimensions of wellness.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Inter',
                          fontSize: 18,
                        ),
                      ),
                      const Text(
                        'From therapists and personal trainers all the way to financial planners and nutritionists, porter’s directory of diverse wellness areas most benificial to the individual’s needs and goals.',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontFamily: 'Inter',
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        children: [
                          // SizedBox(
                          //     width: mediaQuery.size.height * 0.4 -
                          //         mediaQuery.size.height * 0.4 +
                          //         25),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .popAndPushNamed(Assessment.routeName),
                            child: Container(
                              //width: 40,
                              //height: 20,
                              padding: EdgeInsets.all(15.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                border: Border.all(color: Colors.white),
                                //color: Colors.greenAccent,
                              ),
                              child: Center(
                                  child: Text('Go to the assessment!',
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ))),
                            ),
                          ),
                          SizedBox(width: 30),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .popAndPushNamed(HomeScreen.routeName),
                            child: Container(
                              //width: 40,
                              //height: 20,
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(104, 164, 135, 1.000),
                                borderRadius: BorderRadius.circular(25),

                                //color: Colors.greenAccent,
                              ),
                              child: Center(
                                  child: Text('Do it later',
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ))),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
