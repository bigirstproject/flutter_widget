import 'package:flutter/material.dart';
import 'package:flutter_app01/PointerEvent/pointer_event.dart';

class PointerEventTabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PointerEventTabPage"),
      ),
      body: ListView(children: <Widget>[
        RaisedButton(
          child: Text("go to PointerEvent"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return PointerEventPage();
            }));
          },
        ),
      ]),
    );
  }
}
