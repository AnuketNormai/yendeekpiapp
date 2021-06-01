import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

class PumpStatus extends StatelessWidget {
  final dbref = FirebaseDatabase.instance.reference();
  var ctl_User = TextEditingController();
  var ctl_ID = TextEditingController();
  var ctl_Msg = TextEditingController();
  
  final dbRef = FirebaseDatabase.instance.reference().child('PUMP-YENDEEKPI');
  List<Map<dynamic, dynamic>> lists = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ปั๊มน้ำเข้าห้องเย็น
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั้มน้ำเข้าห้องเย็น',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            updateData();
                            print("Cooling pump working");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                            'กำลังทำงาน',
                            style: TextStyle(
                              fontFamily: 'KanitLight',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.green),
                      )))
                ])),
        // ปั๊มหลักเข้ารางปลูก
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั้มน้ำหลักรางปลูก',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Main pump working");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
        // ปั้มน้ำสำรอง
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั้มน้ำสำรองรางปลูก',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Spare pump working");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
        // ปั้ม Dosing A
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั้มโดสปุ๋ย A',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Dosing A");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
        // ปั้ม Dosing B
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั้มโดสปุ๋ย B',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Dosing B");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
        // ปั้ม Dosing Acid
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั้มโดส Acid',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Dosing Acid");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
        // ปั๊ม Circulate A
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั๊มกวนปุ๋ย A',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Circulate A");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
        // ปั๊ม Circulate B
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั๊มกวนปุ๋ย B',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Circulate B");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
        // ปั๊ม Circulate Acid
        Container(
            height: 75.0,
            width: 125.0,
            margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [BoxShadow(blurRadius: 2.0, color: Colors.grey)]),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                        child: ElevatedButton(
                          child: Text('ปั๊มกวน Acid',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.green[900],
                                fontFamily: 'KanitLight',
                              )),
                          style: sendDataToFirebaseButtonStyle,
                          onPressed: () {
                            // readData();
                            print("Circulate Acid");
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      height: 60.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                          child: Text(
                        'กำลังทำงาน',
                        style: TextStyle(
                            fontFamily: 'KanitLight',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.green),
                      )))
                ])),
      ],
    );
  }

  void writeData() {
    dbref.child("anuket").set({'id': '1', 'data': 'boss'});
    print("ส่งข้อมูลเข้า Firebase สำเร็จ ");
  }

  void readData() {
    dbref.once().then((DataSnapshot dataSnapshot) {
      print(dataSnapshot.value);
      print("ดึงข้อมูลสำเร็จ");
    });
  }

  void updateData() {
    dbref.child("PUMP-YENDEEKPI/Pump_1").update({'status': 1});
    print("อัพเดทข้อมูลสำเร็จ");
  }

  void deleteData() {
    var user = ctl_User.text;
    dbref.child("$user").remove();
    print("ลบข้อมูล $user สำเร็จ");
  }

  void cal() {}
}

final ButtonStyle sendDataToFirebaseButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white70,
    primary: Colors.white70,
    minimumSize: Size(250, 60),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ));

final ButtonStyle readDataFromFirebaseButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.blue[600],
    primary: Colors.blue[900],
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ));

final ButtonStyle updateDatatoFirebaseButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.yellow[600],
    primary: Colors.yellow[900],
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ));

final ButtonStyle deleteDatatoFirebaseButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.red[600],
    primary: Colors.red[900],
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ));

final ButtonStyle queryDatatoFirebaseButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.pink[600],
    primary: Colors.pink[900],
    minimumSize: Size(100, 50),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
    ));
