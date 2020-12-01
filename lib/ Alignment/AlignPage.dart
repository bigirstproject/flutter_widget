import 'package:flutter/material.dart';

class AlignPage extends StatefulWidget {
  @override
  _AlignPageState createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlignPage"),
      ),
      body: Container(
        color: Colors.blue[800],
        // alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.blue[50],
              child: Align(
                widthFactor: 4,
                heightFactor: 4,
                alignment: Alignment(1.0, 1.0),
                child: FlutterLogo(
                  size: 20,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: Align(
                alignment: FractionalOffset(0, 0),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: Align(
                alignment: AlignmentDirectional(1,1),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              height: 120.0,
              width: 120.0,
              color: Colors.blue[50],
              child: Align(
                widthFactor: 2,
                heightFactor: 2,
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
