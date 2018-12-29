import 'package:estructurapp/src/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class EstrurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(title: 'Flutter Demo'),
    );
  }
}