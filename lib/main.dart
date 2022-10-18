import 'package:flutter/material.dart';

import './screens/splash_screen.dart';
import './screens/assessment_screen.dart';
import './screens/home_screen.dart';
import './screens/assessment_prompt_screen.dart';

void main() => runApp(PorterWellness());

class PorterWellness extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PorterWellnessApp();
}

class _PorterWellnessApp extends State<PorterWellness> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
        accentColor: Color.fromRGBO(104, 164, 135, 1),
        cardColor: Color.fromRGBO(150, 211, 182, 1),
      ),
      routes: {
        AssessmentScreen.routeName: (ctx) => AssessmentScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        AssessmentPrompt.routeName: (ctx) => AssessmentPrompt(),
      },
    );
  }
}
