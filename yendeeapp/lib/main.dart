import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:yendeeapp/widget/show_bottombar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget()  
    );
               
  }

}


