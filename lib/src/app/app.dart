import 'package:estructurapp/src/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class EstructurApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DecoratedBoxTransition',
      theme: ThemeData.light(),
      home: HomeScreen(title: 'Flutter DecoratedBoxTransition'),
    );
  }
}