import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yendeeapp/pump.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: new AppBar( 
            backgroundColor: Colors.teal[400],         
            bottom: PreferredSize(
              preferredSize: Size(130.0, 50.0),
              child: Container(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      'กรีนเฮ้าส์ เย็นดี',
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 50.0,
                        color: Colors.white,
                        fontFamily: 'KanitLight',
                      ),       
                    ),
                  ],
                ),
              ),
            ),
          ), 
          backgroundColor: Colors.greenAccent[100],
          body: PumpStatus()));
               
  }

}


