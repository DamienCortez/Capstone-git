import 'package:flutter/material.dart';

import '../screens/assessment_prompt_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
        ],
      ),
    );
  }
}
