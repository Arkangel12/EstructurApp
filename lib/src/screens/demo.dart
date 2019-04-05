import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool open = false;

  Widget circleButton(IconData iconData){
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Icon(iconData, size: 30,),
    );
  }

  @override
  Widget build(BuildContext context) {
    double minHeight = MediaQuery.of(context).size.height * .1;
    double maxHeight = MediaQuery.of(context).size.height * .85;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.all-free-download.com/images/graphiclarge/blue_sky_and_white_clouds_hills_beauty_of_hd_picture_166026.jpg',
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      circleButton(Icons.arrow_downward),
                      circleButton(Icons.more_vert),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'March 23th',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 40),
                    child: Text(
                      'John Smith',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    height: open ? maxHeight : minHeight,
                    width: MediaQuery.of(context).size.width,
                    constraints: BoxConstraints(minHeight: minHeight, maxHeight: maxHeight),
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: InkWell(
                      onTap: () => setState(() => open = !open),
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 70, maxHeight: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
