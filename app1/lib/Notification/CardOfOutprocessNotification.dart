import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardOfOutprocessNotification extends StatefulWidget {
  List value;
  CardOfOutprocessNotification({Key? key, required this.value})
      : super(key: key);
  // const DetailOfNotification({Key? key}) : super(key: key);

  @override
  _CardOfOutprocessNotification createState() =>
      _CardOfOutprocessNotification(value);
}

class _CardOfOutprocessNotification
    extends State<CardOfOutprocessNotification> {
  List value;

  _CardOfOutprocessNotification(this.value);

  get child => null;
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "OutProcess Notification Detail",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            // child: Container(

            //   child: Card(
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //     Image.network(
            //         "https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
            //     Row(
            //       children: <Widget>[
            //         Text("Notification No :"),
            //         Text(value[2])
            //       ],
            //     ),

            //     Text(value[0]),
            //     // Text(value[1]),

            //     Text(value[3]),
            //     Text(value[4]),
            //     Text(value[5]),
            //     Text(value[6]),
            //     Text(value[7]),
            //     Text(value[8])
            //       ],
            //     ),
            //   ),
            // ),
            child: SizedBox(
              width: 400,
              height: 600,
              child: Card(
                  elevation: 2,
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset('images/invoice.png',
                            height: 200, width: 220, fit: BoxFit.cover),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Notification No : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[2])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Notification Type : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[0])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Description : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[3])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Stock Status : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[4])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "User Status : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[5])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Priority Type : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[6])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "Start Date : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[7])
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Text(
                                "End Date : ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(value[8])
                            ],
                          ),
                        ),

                        // Text(value[0]),
                        // // Text(value[1]),

                        // Text(value[3]),
                        // Text(value[4]),
                        // Text(value[5]),
                        // Text(value[6]),
                        // Text(value[7]),
                        // Text(value[8]),
                        // Text("test"),
                      ],
                    ),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
