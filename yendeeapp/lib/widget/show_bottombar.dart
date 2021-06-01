import 'package:flutter/material.dart';
import 'package:yendeeapp/widget/control_pump.dart';
import 'package:yendeeapp/widget/homepage.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    ControlPump(),
    Text(
      'Index 1: valve',
      style: optionStyle,
    ),
    Text(
      'Index 2: Temperature',
      style: optionStyle,
    ),
    Text(
      'Index 3: Flow switch',
      style: optionStyle,
    ),
    Text(
      'Index 4: Water level',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[900],
        appBar: new AppBar(
          backgroundColor: Colors.green[600],
          bottom: PreferredSize(
            preferredSize: Size(130.0, 0.0),
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
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
        bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.water_damage_outlined),
            label: 'Pump',
            backgroundColor: Colors.green[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_color_reset),
            label: 'Valve',
            backgroundColor: Colors.green[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny_outlined),
            label: 'Temperature',
            backgroundColor: Colors.green[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.waves),
            label: 'WaterFlow',
            backgroundColor: Colors.green[900],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_outlined),
            label: 'Water level',
            backgroundColor: Colors.green[900],
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
        );

  }
}
