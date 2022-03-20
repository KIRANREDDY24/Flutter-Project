import 'package:app1/Components/Loading.dart';
import 'package:app1/Services/InProcessNotificationServies.dart';
import 'package:flutter/material.dart';

import 'CardInprocessNotification.dart';

class InProcessNotification extends StatefulWidget {
  const InProcessNotification({Key? key}) : super(key: key);

  @override
  _InProcessNotificationState createState() => _InProcessNotificationState();
}

class _InProcessNotificationState extends State<InProcessNotification> {
  List inprocessnotification = [];
  bool loading = false;

  void initState() {
    loadData();
    super.initState();
  }

  // void loadData() {
  //   setState(() async {
  //     CompleteNotificationServices services = CompleteNotificationServices();
  //     int data = await services.getData("date", "plant", "group");
  //     if (data == 200) {
  //       completenotification = services.getNotificationList();
  //     }
  //   });
  // }
  void loadData() async {
    loading = true;
    InprocessNotificationServices services = InprocessNotificationServices();

    int data = await services.getData("date", "plant", "group");
    if (data == 200) {
      setState(() {
        loading = false;
        inprocessnotification = services.getNotificationList();
        // print(inprocessnotification);
        print(inprocessnotification.length);
        print("InProcess Notification Completed Sucessfully ");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String value;
    return loading
        ? Loading()
        : SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.grey[800],
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  title: Text(
                    "Inprocess Notification List",
                    style: TextStyle(color: Colors.white),
                  ),
                  centerTitle: true,
                ),
                body: Material(
                  elevation: 20,
                  child: ListView.builder(
                      itemCount: inprocessnotification.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 210,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Image.asset('images/bill.png',
                                          height: 100,
                                          width: 100,
                                          fit: BoxFit.cover),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Notification Id : ",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(inprocessnotification[index]
                                                  ["NOTIFICAT"]
                                              .toString())
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Notification Type : ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(inprocessnotification[index]
                                                  ["NOTIF_TYPE"]
                                              .toString())
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Description : ",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(inprocessnotification[index]
                                                  ["DESCRIPT"]
                                              .toString())
                                        ],
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: new EdgeInsets.only(left: 60),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: SizedBox(
                                        height: 50,
                                        width: 110,
                                        child: TextButton(
                                            style: TextButton.styleFrom(
                                              backgroundColor: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(30))),
                                              primary: Colors.white,
                                              // textStyle: const TextStyle(fontSize: 20),
                                            ),
                                            onPressed: () {
                                              // print(completenotification[index]["NOTIFICAT"]);
                                              // String value =
                                              //     completenotification[index]["NOTIFICATE"];
                                              // print(value);

                                              String type =
                                                  inprocessnotification[index]
                                                          ["NOTIF_TYPE"]
                                                      .toString();
                                              String eq =
                                                  inprocessnotification[index]
                                                          ["EXTERNAL_NUMBER"]
                                                      .toString();
                                              String no =
                                                  inprocessnotification[index]
                                                          ["NOTIFICAT"]
                                                      .toString();
                                              String describ =
                                                  inprocessnotification[index]
                                                          ["DESCRIPT"]
                                                      .toString();
                                              String sStatus =
                                                  inprocessnotification[index]
                                                          ["S_STATUS"]
                                                      .toString();
                                              String uStatus =
                                                  inprocessnotification[index]
                                                          ["U_STATUS"]
                                                      .toString();
                                              String date =
                                                  inprocessnotification[index]
                                                          ["NOTIFDATE"]
                                                      .toString();
                                              // ignore: non_constant_identifier_names
                                              String PRIOTYPE =
                                                  inprocessnotification[index]
                                                          ["PRIOTYPE"]
                                                      .toString();
                                              // ignore: non_constant_identifier_names
                                              String ENDDATE =
                                                  inprocessnotification[index]
                                                          ["ENDDATE"]
                                                      .toString();

                                              List l = [];
                                              l.add(type);
                                              l.add(eq);
                                              l.add(no);
                                              l.add(describ);
                                              l.add(sStatus);
                                              l.add(uStatus);
                                              l.add(PRIOTYPE);
                                              l.add(date);
                                              l.add(ENDDATE);

                                              // print(completenotification.length);
                                              // String value = "1";
                                              print(l);
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      CardOfInprocessNotification(
                                                          value: l),
                                                ),
                                              );
                                            },
                                            child: Text("Detail")),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                )),
          );
  }
}
