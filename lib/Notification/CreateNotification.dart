import 'package:app1/Components/Loading.dart';
import 'package:app1/Navigation/NavigationBar.dart';
import 'package:app1/Services/CreateNotificationServices.dart';
import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class CreateNotification extends StatefulWidget {
  const CreateNotification({Key? key}) : super(key: key);

  @override
  _CreateNotificationState createState() => _CreateNotificationState();
}

String notificationNo = '';

class _CreateNotificationState extends State<CreateNotification> {
  bool loading = false;
  @override
  void initState() {
    super.initState();
    Controller_Start_Malfunction_Time =
        new TextEditingController(text: "00:00:00");
    Controller_Request_Start_Time = new TextEditingController(text: "00:00:00");
    Controller_Request_End_Time = new TextEditingController(text: "00:00:00");
  }

  TextEditingController group = TextEditingController();
  TextEditingController plant = TextEditingController();
  TextEditingController type = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController description = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController priority = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Controller_Start_Malfunction_Date =
      TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Controller_Start_Malfunction_Time =
      // ignore: non_constant_identifier_names
      TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Controller_Request_Start_Date = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Controller_Request_Start_Time = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Controller_Request_End_Date = TextEditingController();
  // ignore: non_constant_identifier_names
  TextEditingController Controller_Request_End_Time = TextEditingController();
  TextEditingController report = TextEditingController();
  DateTime startselectedDate = DateTime.now();
  Future<void> startselectDate(BuildContext context) async {
    final DateTime? startpicked = await showDatePicker(
        context: context,
        initialDate: startselectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    Controller_Start_Malfunction_Date.text =
        startpicked.toString().substring(0, 10);

    if (startpicked != null && startpicked != startselectedDate)
      setState(() {
        startselectedDate = startpicked;
      });
  }
  //request start date picker

  DateTime requeststartselectedDate = DateTime.now();
  Future<void> requeststartselectDate(BuildContext context) async {
    final DateTime? requeststartpicked = await showDatePicker(
        context: context,
        initialDate: startselectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    Controller_Request_Start_Date.text =
        requeststartpicked.toString().substring(0, 10);

    if (requeststartpicked != null && requeststartpicked != startselectedDate)
      setState(() {
        requeststartselectedDate = requeststartpicked;
      });
  }

  //request end date
  DateTime requestendselectedDate = DateTime.now();
  Future<void> requestendselectDate(BuildContext context) async {
    final DateTime? requestendpicked = await showDatePicker(
        context: context,
        initialDate: requestendselectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    Controller_Request_End_Date.text =
        requestendpicked.toString().substring(0, 10);

    if (requestendpicked != null && requestendpicked != startselectedDate)
      setState(() {
        requestendselectedDate = requestendpicked;
      });
  }

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return loading
        ? Loading()
        : SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                title: Text(
                  "Create Notification",
                  style: TextStyle(color: Colors.white),
                ),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Center(
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: group,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Planner Group',
                            ),
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: plant,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Planning Plant',
                            ),
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: type,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Notification type',
                            ),
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: id,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Equipment Id',
                            ),
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: location,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Functional Location',
                            ),
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: description,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Description',
                            ),
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: priority,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Priority',
                            ),
                            style: TextStyle(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextFormField(
                            onTap: () => startselectDate(context),
                            controller: Controller_Start_Malfunction_Date,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Start Malfunction Date',
                              hintText:
                                  (startselectedDate.toString().split(' ')[0]),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextFormField(
                            // onTap: () => requeststartselectDate(context),
                            controller: Controller_Start_Malfunction_Time,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Start Malfunction Time',
                              // hintText:
                              //     (requeststartselectedDate.toString().split(' ')[0]),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextFormField(
                            onTap: () => requestendselectDate(context),
                            controller: Controller_Request_End_Date,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Request End Date',
                              hintText: (requestendselectedDate
                                  .toString()
                                  .split(' ')[0]),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextFormField(
                            // onTap: () => _selectDate(context),
                            controller: Controller_Request_End_Time,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Request End Time',
                              // hintText: (selectedDate.toString().split(' ')[0]),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
                          margin: EdgeInsets.all(18),
                          child: TextField(
                            controller: report,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Reported By',
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            child: SizedBox(
                              height: height * 0.09,
                              width: width - 350,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.teal,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  primary: Colors.white,
                                  textStyle: const TextStyle(fontSize: 20),
                                ),
                                child: Text(
                                  'Create Notification',
                                  style: TextStyle(fontSize: 15.0),
                                ),
                                onPressed: () async {
                                  setState(() {
                                    loading = true;
                                  });

                                  CreateNotificationService creatnotif =
                                      CreateNotificationService();

                                  int data = await creatnotif.getData(
                                      group.text.toString(),
                                      plant.text.toString(),
                                      type.text.toString(),
                                      id.text.toString(),
                                      location.text.toString(),
                                      description.text.toString(),
                                      priority.text.toString(),
                                      Controller_Start_Malfunction_Date.text
                                          .toString(),
                                      Controller_Start_Malfunction_Time.text
                                          .toString(),
                                      Controller_Request_Start_Date.text
                                          .toString(),
                                      Controller_Request_Start_Time.text
                                          .toString(),
                                      Controller_Request_End_Date.text
                                          .toString(),
                                      Controller_Request_End_Time.text
                                          .toString(),
                                      report.text.toString());
                                  if (data == 200) {
                                    setState(() {
                                      loading = false;
                                    });

                                    // print(data);
                                    print(creatnotif.notifno);
                                    notificationNo = creatnotif.notifno;
                                    final scaffold =
                                        ScaffoldMessenger.of(context);
                                    scaffold.showSnackBar(
                                      SnackBar(
                                        content: Row(
                                          children: [
                                            Text(
                                                " Notification was Created : "),
                                            Text(notificationNo),
                                          ],
                                        ),
                                        action: SnackBarAction(
                                            label: 'UNDO',
                                            onPressed:
                                                scaffold.hideCurrentSnackBar),
                                      ),
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => NavigationBar(),
                                      ),
                                    );
                                  } else {
                                    setState(() {
                                      loading = false;
                                    });
                                    final scaffold =
                                        ScaffoldMessenger.of(context);
                                    scaffold.showSnackBar(
                                      SnackBar(
                                        content: Row(
                                          children: [
                                            Text(
                                                " Notification was Not Created "),
                                            Text(notificationNo),
                                          ],
                                        ),
                                        action: SnackBarAction(
                                            label: 'UNDO',
                                            onPressed:
                                                scaffold.hideCurrentSnackBar),
                                      ),
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            CreateNotification(),
                                      ),
                                    );
                                  }
                                  // Fluttertoast.showToast(
                                  //     msg: 'This is toast notification ' + notificationNo,
                                  //     toastLength: Toast.LENGTH_LONG,
                                  //     gravity: ToastGravity.BOTTOM,
                                  //     backgroundColor: Colors.blue,
                                  //     textColor: Colors.white,
                                  //     timeInSecForIosWeb: 3,
                                  //     fontSize: 16.0);
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}

// void showAlertDialog(BuildContext context) {
//   Widget yesButton = TextButton(
//     child: Text("Yes"),
//     onPressed: () async {
//       CreateNotificationService creatnotif = CreateNotificationService();

//       int data = await creatnotif.getData(group,
//                                       plant,
//                                       type,
//                                       id,
//                                       location,
//                                       description,
//                                       priority,
//                                       Controller_Start_Malfunction_Date,
//                                       Controller_Start_Malfunction_Time,
//                                       Controller_Request_Start_Date,
//                                       Controller_Request_Start_Time,
//                                       Controller_Request_End_Date,
//                                       Controller_Request_End_Time,
//                                       report););

//       print(data);
//       print(creatnotif.notifno);
//       notificationNo = creatnotif.notifno;
//       final scaffold = ScaffoldMessenger.of(context);
//       scaffold.showSnackBar(
//         SnackBar(
//           content: Row(
//             children: [
//               Text("Notification was Created : "),
//               Text(notificationNo),
//             ],
//           ),
//           action: SnackBarAction(
//               label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
//         ),
//       );
//       // Fluttertoast.showToast(
//       //     msg: 'This is toast notification ' + notificationNo,
//       //     toastLength: Toast.LENGTH_LONG,
//       //     gravity: ToastGravity.BOTTOM,
//       //     backgroundColor: Colors.blue,
//       //     textColor: Colors.white,
//       //     timeInSecForIosWeb: 3,
//       //     fontSize: 16.0);

//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => NavigationBar(),
//         ),
//       );
//     },
//   );
//   Widget nobutton = TextButton(
//     child: Text("No"),
//     onPressed: () {
//       Navigator.of(context).pop();
//     },
//   );

//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("Notification"),
//     content: Text("Are you what to Create the Notification"),
//     actions: [
//       nobutton,
//       yesButton,
//     ],
//   );

//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }

// void send(one, two) {
//   print(one);
//   print(two);
// }
