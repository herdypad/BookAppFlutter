import 'package:flutter/material.dart';
import 'package:myapp/theme.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Store',
        style: semiBoltText20,
      )),
    );
  }
}
