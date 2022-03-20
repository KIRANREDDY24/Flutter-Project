// import 'dart:convert';

import 'package:app1/Services/CompleteNotificationServices.dart';
// import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'ViewData.dart';

class Homepage1 extends StatefulWidget {
  @override
  State<Homepage1> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage1> {
  List data = [];
  @override
  void initState() {
    super.initState();
  }

  void loadData() async {
    CompleteNotificationServices services = CompleteNotificationServices();

    int dat = await services.getData("date", "plant", "group");
    if (dat == 200) {
      setState(() {
        data = services.getNotificationList();

        print("Complete");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('Notification List'),
          actions: [
            IconButton(
              icon: Icon(Icons.refresh),
              onPressed: () {
                // setState(() {
              },
            )
          ],
        ),
        body: ListView.builder(
            padding: const EdgeInsets.all(16.0),
            // ignore: unnecessary_null_comparison
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (context, index) {
              return _buildRow(data[index]);
              // return _buildRow(data[index]);
            }));
  }

  Widget _buildRow(dynamic item) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        trailing: Icon(Icons.arrow_forward),
        leading: Icon(Icons.notifications_active),
        tileColor: Colors.grey[200],
        title: Text(
          item['NOTIFICAT'] == null ? '' : item['NOTIFICAT'],
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        subtitle: Text("Type: " + item['NOTIF_TYPE'].toString()),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ViewData(
                // NOTIFICAT: item['NOTIFICAT'].toString(),
                // NOTIF_TYPE: item['NOTIF_TYPE'].toString(),
                // EQUIPMENT: item['EQUIPMENT'].toString(),
                // DESCRIPT: item['DESCRIPT'].toString(),
                // S_STATUS: item['S_STATUS'].toString(),
                // EQUIDESCR: item['EQUIDESCR'].toString(),
                // NOTIFDATE: item['NOTIFDATE'].toString(),
                // NOTIFTIME: item['NOTIFTIME'].toString(),
                // PRIORITY: item['PRIORITY'].toString(),
                // STARTDATE: item['STARTDATE'].toString(),
                // ENDDATE: item['ENDDATE'].toString(),
                ),
          ),
        ),
      ),
    );
  }
}
