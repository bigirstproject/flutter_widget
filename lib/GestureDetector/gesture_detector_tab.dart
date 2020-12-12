import 'package:flutter/material.dart';
import 'package:flutter_app01/GestureDetector/BothDirectionTestRoute.dart';
import 'package:flutter_app01/GestureDetector/GestureConflictTestRouteState.dart';
import 'package:flutter_app01/GestureDetector/GestureRecognizerTestRouteState.dart';
import 'package:flutter_app01/GestureDetector/drag_page.dart';
import 'package:flutter_app01/GestureDetector/drag_vertical_page.dart';
import 'package:flutter_app01/GestureDetector/scaleTestRouteState.dart';

class GesTrueDetectorTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GesTrueDetectorTab"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("go to DragPage"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return DragPage();
                  }));
                },
              ),
              RaisedButton(
                child: Text("go to DragVerticalPage"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return DragVerticalPage();
                  }));
                },
              ),
              RaisedButton(
                child: Text("go to ScaleTestRouteState"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return ScaleTestRouteState();
                  }));
                },
              ),
              RaisedButton(
                child: Text("go to GestureRecognizerTestRouteState"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return GestureRecognizerTestRouteState();
                  }));
                },
              ),
              RaisedButton(
                child: Text("go to BothDirectionTestRoute"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return BothDirectionTestRoute();
                      }));
                },
              ),
              RaisedButton(
                child: Text("go to GestureConflictTestRouteState"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return GestureConflictTestRouteState();
                      }));
                },
              ),
            ]),
      ),
    );
  }
}
