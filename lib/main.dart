import 'package:flutter/material.dart';
import 'package:notification_app/widget/bottom_nav_bar.dart';
import 'package:notification_app/widget/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BottomNavBar(),
    );
  }
}

