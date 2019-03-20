import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;

  DecorationTween decorationTween = DecorationTween(
    begin: BoxDecoration(
      color: Colors.white,
      border: Border.all(
        color: const Color(0xFF202020),
        style: BorderStyle.solid,
        width: 1.0,
      ),
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(60.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10.0,
          spreadRadius: 4.0,
        )
      ],
    ),
    end: BoxDecoration(
      color: Colors.white,
    ),
  );

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
    animationController.addStatusListener((status){
       if (status == AnimationStatus.completed){
         animationController.reverse().orCancel;
       } else if (status == AnimationStatus.dismissed){
         animationController.forward().orCancel;
       }
    });
    animationController.forward().orCancel;
  }


  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: DecoratedBoxTransition(
          decoration: decorationTween.animate(
            CurvedAnimation(
              parent: animationController,
              curve: Curves.decelerate,
            ),
          ),
          position: DecorationPosition.background,
          child: FlutterLogo(
            size: 300,
          ),
        ),
      ),
    );
  }
}


