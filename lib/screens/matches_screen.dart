import 'package:flutter/material.dart';

import './assessment_screen.dart';
import './home_screen.dart';

/// Created by Sam Cartledge and Daddy dame (CBU class of '23)
/// Capstone 2022-23
class MatchesScreen extends StatefulWidget {
  MatchesScreen();

  static const routeName = '/matches-screen';

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        
      ),
    );
  }
}
