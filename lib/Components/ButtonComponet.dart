import 'package:flutter/material.dart';

class ButtonComponent extends StatefulWidget {
  const ButtonComponent({Key? key}) : super(key: key);

  @override
  _ButtonComponentState createState() => _ButtonComponentState();
}

class _ButtonComponentState extends State<ButtonComponent> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: Center(
        child: Container(
          child: SizedBox(
            height: height * 0.08,
            width: width - 70,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                primary: Colors.white,
                textStyle: const TextStyle(fontSize: 20),
              ),
              child: Text(
                'Back',
                style: TextStyle(fontSize: 20.0),
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => NavigationBar(),
                //   ),
                // );
              },
            ),
          ),
        ),
      ),
    );
  }
}
