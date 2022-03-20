import 'package:app1/Notification/CreateNotification.dart';
// import 'package:app1/Notification/ListOfNotification.dart';
import 'package:app1/Notification/UpdateNotification.dart';
import 'package:flutter/material.dart';

import 'TypeOfNotification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Container(
              height: height * 0.09,
              width: width - 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 143, 158, 1),
                      Color.fromRGBO(255, 188, 143, 1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateNotification(),
                      ),
                    );
                  },
                  child: Text(
                    'Create Notification',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Netflix",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 0.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              height: height * 0.09,
              width: width - 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 143, 158, 1),
                      Color.fromRGBO(255, 188, 143, 1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TypeOfNotificationScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'List Of Notification',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Netflix",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 0.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Center(
            child: Container(
              height: height * 0.09,
              width: width - 180,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 143, 158, 1),
                      Color.fromRGBO(255, 188, 143, 1),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.2),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ]),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdateNotification(),
                      ),
                    );
                  },
                  child: Text(
                    'Update Notification',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: "Netflix",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 0.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Center(
          //   child: Material(
          //     elevation: 30,
          //     borderRadius: BorderRadius.circular(30),
          //     shadowColor: Colors.black,
          //     child: Container(
          //       child: SizedBox(
          //         height: height * 0.09,
          //         width: width - 180,
          //         child: TextButton(
          //           style: TextButton.styleFrom(
          //             backgroundColor: Colors.teal,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.all(Radius.circular(30))),
          //             primary: Colors.white,
          //             textStyle: const TextStyle(fontSize: 20),
          //           ),
          //           child: Text(
          //             'Create Notification',
          //             style: TextStyle(fontSize: 15.0),
          //           ),
          //           onPressed: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => CreateNotification(),
          //               ),
          //             );
          //           },
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Container(
          //     child: SizedBox(
          //       height: height * 0.09,
          //       width: width - 180,
          //       child: TextButton(
          //         style: TextButton.styleFrom(
          //           backgroundColor: Colors.teal,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.all(Radius.circular(30))),
          //           primary: Colors.white,
          //           textStyle: const TextStyle(fontSize: 20),
          //         ),
          //         child: Text(
          //           'List of Notification',
          //           style: TextStyle(fontSize: 15.0),
          //         ),
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => TypeOfNotificationScreen(),
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),
          // Center(
          //   child: Container(
          //     child: SizedBox(
          //       height: height * 0.09,
          //       width: width - 180,
          //       child: TextButton(
          //         style: TextButton.styleFrom(
          //           backgroundColor: Colors.teal,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.all(Radius.circular(30))),
          //           primary: Colors.white,
          //           textStyle: const TextStyle(fontSize: 20),
          //         ),
          //         child: Text(
          //           'Update Notification',
          //           style: TextStyle(fontSize: 15.0),
          //         ),
          //         onPressed: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => UpdateNotification(),
          //             ),
          //           );
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
      )),
    );
  }
}
