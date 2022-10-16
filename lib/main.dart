import 'package:flutter/material.dart';

import './screens/splash_screen.dart';

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
    );
  }
}
