import 'package:app1/LoginPage.dart';
import 'package:app1/Notification/ScreenNotification.dart';
import 'package:app1/SignOut/SingOutScreen.dart';
import 'package:app1/WorkOrder/ScreenWorkOrder.dart';
import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    NotificationScreen(),
    WorkOrderScreen(),
    SignOutScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 2) {
      final scaffold = ScaffoldMessenger.of(context);
      scaffold.showSnackBar(
        SnackBar(
          content: Text(
            "Log out is Successfull ",
            style: TextStyle(
                // fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          action: SnackBarAction(
              label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
        ),
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text("Plant Maintaince", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal[50],
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Notification',
            // backgroundColor: Colors.teal
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
            ),
            label: 'Work Order',
            // backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school,
            ),
            label: 'Sign out',

            // backgroundColor: Colors.red
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
