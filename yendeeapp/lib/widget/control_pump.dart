import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ControlPump extends StatefulWidget {
  @override
  _ControlPumpState createState() => _ControlPumpState();
}

class _ControlPumpState extends State<ControlPump> {
  final dbref = FirebaseDatabase.instance.reference();
  final dbRef = FirebaseDatabase.instance.reference().child('PUMP-YENDEEKPI');
  List<Map<dynamic, dynamic>> lists = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: dbRef.onValue,
        builder: (context, AsyncSnapshot<Event> snapshot) {
          if (snapshot.hasData) {
            lists.clear();
            DataSnapshot dataValues = snapshot.data.snapshot;
            Map<dynamic, dynamic> values = dataValues.value;
            values.forEach((key, values) {
              lists.add(values);
              // print(lists);
            });
 
            var statuspump_09 = lists[9];
            var statuspump_10 = lists[8];
            var statuspump_03 = lists[7];
            var statuspump_04 = lists[6];
            var statuspump_01 = lists[5];
            var statuspump_02 = lists[4];
            var statuspump_07 = lists[3];
            var statuspump_08 = lists[2];
            var statuspump_05 = lists[1];
            var statuspump_06 = lists[0];

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
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
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
                                    (statuspump_01["status"] == 1)
                                        ? updateData(0, "Pump_01")
                                        : updateData(1, "Pump_01");
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
                                color: (statuspump_01["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_01["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั๊มรีเทินเข้าถัง
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้มน้ำหลักเข้ารางปลูก',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_02["status"] == 1)
                                        ? updateData(0, "Pump_02")
                                        : updateData(1, "Pump_02");
                                    print("AB Main pump working");
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
                                color: (statuspump_02["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_02["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั้มน้ำหลักเข้ารางปลูก
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้มน้ำหลักเข้ารางปลูก',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_03["status"] == 1)
                                        ? updateData(0, "Pump_03")
                                        : updateData(1, "Pump_03");
                                    print("AB Main pump working");
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
                                color: (statuspump_03["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_03["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั้มสำรองเข้ารางปลูก
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้มสำรองเข้ารางปลูก',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_04["status"] == 1)
                                        ? updateData(0, "Pump_04")
                                        : updateData(1, "Pump_04");
                                    print("AB Spare pump working");
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
                                color: (statuspump_04["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_04["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั้มกวน A
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้มกวนปุ๋ย A',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_05["status"] == 1)
                                        ? updateData(0, "Pump_05")
                                        : updateData(1, "Pump_05");
                                    print("Circulate A pump working");
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
                                color: (statuspump_05["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_05["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั้ม Dosing A
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้ม Dosing A',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_06["status"] == 1)
                                        ? updateData(0, "Pump_06")
                                        : updateData(1, "Pump_06");
                                    print("Dosing A pump working");
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
                                color: (statuspump_06["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_06["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั๊ม กวน B
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้มกวนปุ๋ย B',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_07["status"] == 1)
                                        ? updateData(0, "Pump_07")
                                        : updateData(1, "Pump_07");
                                    print("Circulate B pump working");
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
                                color: (statuspump_07["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_07["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั๊ม Dosing B
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้ม Dosing B',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_08["status"] == 1)
                                        ? updateData(0, "Pump_08")
                                        : updateData(1, "Pump_08");
                                    print("Dosing B pump working");
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
                                color: (statuspump_08["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_08["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั๊ม Circulate Acid
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้มกวน Acid',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_09["status"] == 1)
                                        ? updateData(0, "Pump_09")
                                        : updateData(1, "Pump_09");
                                    print("Circulate Acid pump working");
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
                                color: (statuspump_09["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_09["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ])),
                // ปั๊ม Dosing Acid
                Container(
                    height: 75.0,
                    width: 125.0,
                    margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(blurRadius: 2.0, color: Colors.grey)
                        ]),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5.0),
                                child: ElevatedButton(
                                  child: Text('ปั้ม Dosing Acid',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_10["status"] == 1)
                                        ? updateData(0, "Pump_10")
                                        : updateData(1, "Pump_10");
                                    print("Dosing Acid pump working");
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
                                color: (statuspump_10["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_10["status"] == 1)
                                      ? Text("กำลังทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.green,
                                            fontFamily: 'KanitLight',
                                          ))
                                      : Text("หยุดทำงาน",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                            color: Colors.red,
                                            fontFamily: 'KanitLight',
                                          ))))
                        ]))
              ],
            );
          }
          return CircularProgressIndicator();
        });
  }

  void updateData(int sta, String pump) {
    dbref.child("PUMP-YENDEEKPI/$pump").update({'status': sta});
    print("อัพเดทข้อมูลสำเร็จ");
  }
}

final ButtonStyle sendDataToFirebaseButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.greenAccent[400],
    primary: Colors.greenAccent[400],
    minimumSize: Size(250, 60),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ));
