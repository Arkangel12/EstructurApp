import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  {
//  with SingleTickerProviderStateMixin
//  Animation<Decoration> decoration;
//  AnimationController controller =  AnimationController(duration: const Duration(seconds: 2), vsync: this);
//  final Animation<double> animation = CurvedAnimation(
//    parent: controller,
//    curve: Curves.ease,
//  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decoration,
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
