import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ControlValve extends StatefulWidget {
  const ControlValve({ Key key }) : super(key: key);
  @override
  _ControlValveState createState() => _ControlValveState();
}

class _ControlValveState extends State<ControlValve> {

  final dbref = FirebaseDatabase.instance.reference();
  final dbRef = FirebaseDatabase.instance.reference().child('SOLINOID VALVE-YENDEEKPI');
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
            var statusSV_09 = lists[29];
            var statusSV_08 = lists[28];
            var statusSV_29 = lists[27];
            var statusSV_07 = lists[26];
            var statusSV_28 = lists[25];
            var statusSV_06 = lists[24];
            var statusSV_12 = lists[23];
            var statusSV_11 = lists[22];
            var statusSV_10 = lists[21];
            var statusSV_16 = lists[20];
            var statusSV_15 = lists[19];
            var statusSV_14 = lists[18];
            var statusSV_13 = lists[17];
            var statusSV_30 = lists[16];
            var statusSV_19 = lists[15];
            var statusSV_18 = lists[14];
            var statusSV_17 = lists[13];
            var statusSV_23 = lists[12];
            var statusSV_01 = lists[11];
            var statusSV_22 = lists[10];
            var statusSV_21 = lists[9];
            var statusSV_20 = lists[8];
            var statusSV_27 = lists[7];
            var statusSV_05 = lists[6];
            var statusSV_26 = lists[5];
            var statusSV_04 = lists[4];
            var statusSV_25 = lists[3];
            var statusSV_03 = lists[2];
            var statusSV_24 = lists[1];
            var statusSV_02 = lists[0];

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
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-01',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_01["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_01")
                                        : updateData(1, "Solinoid Valve_01");
                                    print("SV_1 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_01["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-02',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_02["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_02")
                                        : updateData(1, "Solinoid Valve_02");
                                    print("SV_2 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_02["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-03',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_03["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_03")
                                        : updateData(1, "Solinoid Valve_03");
                                    print("SV_1 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_03["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ])),
                //  Row 2 SV4-SV6
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
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-04',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_04["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_04")
                                        : updateData(1, "Solinoid Valve_04");
                                    print("SV_4 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_04["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-05',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_05["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_05")
                                        : updateData(1, "Solinoid Valve_05");
                                    print("SV_5 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_05["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-06',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_06["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_06")
                                        : updateData(1, "Solinoid Valve_06");
                                    print("SV_06 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_06["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ])),
                //  Row 3 SV7-SV9
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
                                padding: EdgeInsets.fromLTRB(20, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-07',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_07["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_07")
                                        : updateData(1, "Solinoid Valve_07");
                                    print("SV_07 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_07["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-08',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_08["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_08")
                                        : updateData(1, "Solinoid Valve_08");
                                    print("SV_08 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_08["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 5, 20, 5.0),
                                child: ElevatedButton(
                                  child: Text('SV-09',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontFamily: 'KanitLight',
                                      )),
                                  onPressed: () {
                                    // readData();
                                    (statusSV_09["status"] == 1)
                                        ? updateData(0, "Solinoid Valve_09")
                                        : updateData(1, "Solinoid Valve_09");
                                    print("SV_09 working");
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: (statusSV_09["status"] == 1) ? Colors.greenAccent[400] : Colors.redAccent[400],
                                    minimumSize: Size(100, 60),
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  )),
                                ),
                              ),
                            ],
                          ),
                        ]))
                
              ],
            );
          }
          return CircularProgressIndicator();
        });
  }

  void updateData(int sta, String sv) {
    dbref.child("SOLINOID VALVE-YENDEEKPI/$sv").update({'status': sta});
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