import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ContentHome extends StatefulWidget {
  @override
  _ContentHomeState createState() => _ContentHomeState();
}

class _ContentHomeState extends State<ContentHome> {
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
                    height: 225.0,
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
                                padding: EdgeInsets.fromLTRB(12.0, 10.0, 5.0, 0),
                                child: Text(
                                  "PUMP 1",
                                  style : TextStyle(
                                    color : Colors.grey,
                                    fontFamily: "KanitLight",
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 0),
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                  color: (statuspump_1["status"] == 1)
                                      ? Colors.greenAccent[100].withOpacity(0.5)
                                      : Colors.redAccent[100].withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                    child: (statuspump_1["status"] == 1)
                                        ? Text("ON",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.green,
                                              fontFamily: 'KanitLight',
                                            ))
                                        : Text("OFF",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0,
                                              color: Colors.red,
                                              fontFamily: 'KanitLight',
                                          ))))
                            ],
                          ),
                                                           
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