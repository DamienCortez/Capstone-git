import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import './screens/splash_screen.dart';
import './screens/assessment_screen.dart';
import './screens/home_screen.dart';
import './screens/assessment_prompt_screen.dart';
import './screens/auth_screen.dart';

void main() => runApp(PorterWellness());

class PorterWellness extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PorterWellnessApp();
}

class _PorterWellnessApp extends State<PorterWellness> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (ctx, appSnapshot) => MaterialApp(
        home: appSnapshot.connectionState != ConnectionState.done
            ? SplashScreen()
            : StreamBuilder(
                stream: FirebaseAuth.instance.authStateChanges(),
                builder: (ctx, userSnapshot) {
                  // checks if we are logged in, then show the Chat Screen
                  if (userSnapshot.hasData) {
                    return HomeScreen();
                  }
                  return AuthScreen();
                },
              ),
        theme: ThemeData(
          primaryColor: const Color.fromRGBO(255, 247, 237, 1),
          cardColor: const Color.fromRGBO(57,114,105,0.83),
          buttonColor: const Color.fromRGBO(57, 114, 105, 1),
          buttonTheme: ButtonTheme.of(context).copyWith(
            buttonColor: const Color.fromRGBO(57, 114, 105, 1),
            textTheme: ButtonTextTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        routes: {
          AssessmentScreen.routeName: (ctx) => AssessmentScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),
          AssessmentPrompt.routeName: (ctx) => AssessmentPrompt(),
        },
      ),
    );
  }
}
