import 'package:app1/Components/Loading.dart';
import 'package:app1/Services/ListNotificationServices.dart';
import 'package:flutter/material.dart';

import 'CardOfListNotification.dart';

class ListOfNotification extends StatefulWidget {
  const ListOfNotification({Key? key}) : super(key: key);

  @override
  _ListOfNotificationState createState() => _ListOfNotificationState();
}

class _ListOfNotificationState extends State<ListOfNotification> {
  bool loading = false;
  // ignore: non_constant_identifier_names
  List Listnotifi = [];

  @override
  void initState() {
    loadData();
    super.initState();
  }

  void loadData() async {
    loading = true;
    ListNotificationServices services = ListNotificationServices();
    int data = await services.getData("date", "plant", "group");
    if (data == 200) {
      setState(() {
        loading = false;
        Listnotifi = services.getNotificationList();
        print(Listnotifi);
        print(Listnotifi.length);
        print("All the List of Notification Successfull");
      });
    }
  }

  String getno(int index) {
    var item = Listnotifi[index];
    var m = item["NOTIFICAT"];
    return m;
  }

  @override
  Widget build(BuildContext context) {
    // String value;
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
                    "All Notification List",
                    style: TextStyle(color: Colors.white),
                  ),
                  centerTitle: true,
                ),
                body: Material(
                  elevation: 20,
                  child: ListView.builder(
                      itemCount: Listnotifi.length,
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
                                          Text(Listnotifi[index]["NOTIFICAT"]
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
                                          Text(Listnotifi[index]["NOTIF_TYPE"]
                                              .toString())
                                        ],
                                      ),
                                      // Row(
                                      //   children: <Widget>[
                                      //     Text(
                                      //       "Description : ",
                                      //       style: TextStyle(
                                      //           fontSize: 15,
                                      //           fontWeight: FontWeight.bold),
                                      //     ),
                                      //     Text(Listnotifi[index]["DESCRIPT"]
                                      //         .toString())
                                      //   ],
                                      // ),
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

                                              String type = Listnotifi[index]
                                                      ["NOTIF_TYPE"]
                                                  .toString();
                                              String eq = Listnotifi[index]
                                                      ["EXTERNAL_NUMBER"]
                                                  .toString();
                                              String no = Listnotifi[index]
                                                      ["NOTIFICAT"]
                                                  .toString();
                                              String describ = Listnotifi[index]
                                                      ["DESCRIPT"]
                                                  .toString();
                                              String sStatus = Listnotifi[index]
                                                      ["S_STATUS"]
                                                  .toString();
                                              String uStatus = Listnotifi[index]
                                                      ["U_STATUS"]
                                                  .toString();
                                              String date = Listnotifi[index]
                                                      ["NOTIFDATE"]
                                                  .toString();
                                              // ignore: non_constant_identifier_names
                                              String PRIOTYPE =
                                                  Listnotifi[index]["PRIOTYPE"]
                                                      .toString();
                                              // ignore: non_constant_identifier_names
                                              String ENDDATE = Listnotifi[index]
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
                                                      CardOfListNotification(
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
