import 'package:flutter/material.dart';
import 'package:myapp/screens/buttom_nav_bar.dart';
import 'package:myapp/screens/home/home_page.dart';
import 'package:myapp/screens/home/page/book_detail.dart';
import 'package:myapp/screens/profile/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'e-Book App',
      debugShowCheckedModeBanner: false,
      routes: {
        BottomNavBar.nameRoute: (context) => BottomNavBar(),
        HomePage.nameRoute: (context) => HomePage(),
        BookDetail.nameRoute: (context) => BookDetail(),
        ProfilePage.nameRoute: (context) => ProfilePage(),
      },
    );
  }
}
