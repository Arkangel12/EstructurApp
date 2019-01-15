import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static Route<dynamic> route() {
      return MaterialPageRoute(
        builder: (context) => SecondScreen(),
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hola página dos'),
      ),
    );
  }
}
