import 'package:flutter/material.dart';
import 'package:task44/home_page1.dart';
import 'home_page2.dart';
import 'home_page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false,

      home: HomePage1(),
      // home: HomePage2(),
    );
  }
}
