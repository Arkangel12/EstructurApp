import 'package:estructurapp/src/screens/secondScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          child: Image.network('https://pbs.twimg.com/profile_images/1033695141901623301/W-VnxCiG_400x400.jpg'),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(SecondScreen.route()),
        tooltip: 'Ir a pagina dos',
        child: Icon(Icons.laptop_mac),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
