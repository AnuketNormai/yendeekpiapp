import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';


class PumpStatus extends StatelessWidget {
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
            });
            var statuspump_1 = lists[8];
            var statuspump_2 = lists[7];
            var statuspump_3 = lists[6];
            var statuspump_4 = lists[5];
            var statuspump_5 = lists[4];
            var statuspump_6 = lists[3];
            var statuspump_7 = lists[2];
            var statuspump_8 = lists[1];
            var statuspump_9 = lists[0];

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
                                    (statuspump_1["status"] == 1)
                                        ? updateData(0, "Pump_1")
                                        : updateData(1, "Pump_1");
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
                                color: (statuspump_1["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_1["status"] == 1)
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
                // ปั๊มหลักเข้ารางปลูก
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
                                    (statuspump_2["status"] == 1)
                                        ? updateData(0,"Pump_2")
                                        : updateData(1,"Pump_2");
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
                                color: (statuspump_2["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_2["status"] == 1)
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
                // ปั้มน้ำสำรอง
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
                                  child: Text('ปั้มน้ำสำรองเข้ารางปลูก',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.green[900],
                                        fontFamily: 'KanitLight',
                                      )),
                                  style: sendDataToFirebaseButtonStyle,
                                  onPressed: () {
                                    // readData();
                                    (statuspump_3["status"] == 1)
                                        ? updateData(0,"Pump_3")
                                        : updateData(1,"Pump_3");
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
                                color: (statuspump_3["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_3["status"] == 1)
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
                                    (statuspump_4["status"] == 1)
                                        ? updateData(0,"Pump_4")
                                        : updateData(1,"Pump_4");
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
                                color: (statuspump_4["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_4["status"] == 1)
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
                // ปั้ม Dosing B
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
                                    (statuspump_5["status"] == 1)
                                        ? updateData(0,"Pump_5")
                                        : updateData(1,"Pump_5");
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
                                color: (statuspump_5["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_5["status"] == 1)
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
                // ปั้ม Dosing Acid
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
                                    (statuspump_6["status"] == 1)
                                        ? updateData(0,"Pump_6")
                                        : updateData(1,"Pump_6");
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
                                color: (statuspump_6["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_6["status"] == 1)
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
                // ปั๊ม Circulate A
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
                                    (statuspump_7["status"] == 1)
                                        ? updateData(0,"Pump_7")
                                        : updateData(1,"Pump_7");
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
                                color: (statuspump_7["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_7["status"] == 1)
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
                // ปั๊ม Circulate B
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
                                    (statuspump_8["status"] == 1)
                                        ? updateData(0,"Pump_8")
                                        : updateData(1,"Pump_8");
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
                                color: (statuspump_8["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_8["status"] == 1)
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
                                    (statuspump_9["status"] == 1)
                                        ? updateData(0,"Pump_9")
                                        : updateData(1,"Pump_9");
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
                                color: (statuspump_9["status"] == 1)
                                    ? Colors.greenAccent[100].withOpacity(0.5)
                                    : Colors.grey[100],
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                  child: (statuspump_9["status"] == 1)
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




