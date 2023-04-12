import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../screens/assessment_prompt_screen.dart';
import '../screens/matches.dart';

/// Created by Jaden Watt (CBU class of '23)
/// Capstone 2022-23
class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(title: const Text('Menu')),
          ListTile(
            leading: const Icon(Icons.back_hand),
            title: const Text('Assessment'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(AssessmentPrompt.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.radar),
            title: const Text('Results'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(Matches.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).popUntil((route) =>
                  route.isFirst); // sends to login screen when pressed
            },
          ),
        ],
      ),
    );
  }
}
