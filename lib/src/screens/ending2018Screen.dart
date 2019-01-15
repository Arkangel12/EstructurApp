import 'package:flutter/material.dart';

class Ending2018Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              goals('Start 2018', Colors.green, width),
              goals('1 Month with Flutter', Colors.green, width),
              goals('Stop Fluter for some reason', Colors.yellow, width),
              goals('Telegram flutter Group with GygaCode', Colors.green, width),
            ],
          ),
        ),
      ),
    );
  }

  Widget goals(String goal, Color color, double width) {
    return Container(
      width: width,
      height: 50,
      child: Card(
        elevation: 8,
        child: Center(
          child: Text(
            goal,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      color: color,
    );
  }
}
