import 'package:flutter/material.dart';
import 'package:myapp/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Profile',
        style: semiBoltText20,
      )),
    );
  }
}
