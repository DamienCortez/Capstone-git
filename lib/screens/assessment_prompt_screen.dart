import 'package:flutter/material.dart';

import './assessment_screen.dart';
import './home_screen.dart';

class AssessmentPrompt extends StatefulWidget {
  AssessmentPrompt();

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
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Container(
              height: mediaQuery.size.height * 0.4,
              width: mediaQuery.size.width * 0.6,
              child: Card(
                color: Theme.of(context).cardColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                      'Welcome to the Assessment!',
                      style: TextStyle(
                          fontSize: 24, color: Color.fromRGBO(8, 64, 37, 1)),
                      textAlign: TextAlign.center,
                    ),
                    const Text(
                      'You will be asked several questions not limited to your physical and mental condition, medical condition, diet, and time schedule.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color.fromRGBO(73, 69, 79, 1)),
                    ),
                    Row(
                      children: [
                        SizedBox(
                            width: mediaQuery.size.height * 0.4 -
                                mediaQuery.size.height * 0.4 +
                                25),
                        TextButton(
                          onPressed: () => Navigator.of(context)
                              .popAndPushNamed(AssessmentScreen.routeName),
                          child: const Text(
                            'Lets go!',
                            style: TextStyle(
                              color: Color.fromRGBO(8, 64, 37, 1),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context)
                              .popAndPushNamed(HomeScreen.routeName),
                          child: const Text(
                            'I will do it later!',
                            style: TextStyle(
                              color: Color.fromRGBO(8, 64, 37, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
