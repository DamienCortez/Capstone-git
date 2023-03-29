import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens/assessment_prompt_screen.dart';
import '../screens/matches_screen.dart';

/// Created by Jaden Watt (CBU class of '23)
/// Capstone 2022-23
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      //shape: ,
      child: Column(
        children: <Widget>[
          AppBar(title: const Text('Drawer')),
          ListTile(
            leading: const Icon(Icons.back_hand),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(AssessmentPrompt.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('logout'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).popUntil((route) =>
                  route.isFirst); // sends to login screen when pressed
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.radar),
            title: const Text('Results'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(MatchesScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
