import 'package:flutter/material.dart';
import 'package:yendeeapp/widget/contenthome.dart';
import 'package:yendeeapp/widget/control_pump.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent[100],
        appBar: new AppBar(
          backgroundColor: Colors.teal[400],
          bottom: PreferredSize(
            preferredSize: Size(130.0,0.0),
            child: Container(
              height: 55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'กรีนเฮ้าส์ เย็นดี',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white,
                      fontFamily: 'KanitLight',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: ContentHome());
  }
}




