import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Layouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    var namePosition = MediaQuery.of(context).size.height / 3;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * .4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/mywife.jpg'),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 20,
                  left: 20,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back, size: 32, color: Colors.white),
                      SizedBox(width: MediaQuery.of(context).size.width * .65),
                      Icon(Icons.create, size: 32, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.more_vert, size: 32, color: Colors.white),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: namePosition
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Anya',
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  right: 30,
                  child: CircleAvatar(
                    maxRadius: 30,
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Icon(Icons.phone, color: Colors.indigo, size: 32,),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            '(650) 555 1234',
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                            'Mobile',
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Icon(
                            Icons.chat,
                            color: Colors.blueGrey,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            '(323) 555 6789',
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                            'Work',
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Icon(
                            Icons.chat,
                            color: Colors.blueGrey,
                          ),
                        ),
                        Divider(color: Colors.blueGrey)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                    child: Icon(
                      Icons.email,
                      color: Colors.indigo,
                      size: 32,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'anya_personal@example.com',
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                            'Personal',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'anyawork@work.com',
                            style: TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(
                            'Work',
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                        Divider(color: Colors.blueGrey)
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
