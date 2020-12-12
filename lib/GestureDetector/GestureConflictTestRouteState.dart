import 'package:flutter/material.dart';

class GestureConflictTestRouteState extends StatefulWidget {
  @override
  _GestureConflictTestRouteStateState createState() =>
      _GestureConflictTestRouteStateState();
}

class _GestureConflictTestRouteStateState
    extends State<GestureConflictTestRouteState> {
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BothDirectionTestRoute"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: _left,
            child: Listener(
              onPointerDown: (details) {
                print("Listener down");
              },
              onPointerUp: (details) {
                //会触发
                print("Listener up");
              },
              child: GestureDetector(
                child: CircleAvatar(child: Text("A")),
                //要拖动和点击的widget
                onHorizontalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _left += details.delta.dx;
                  });
                },
                onHorizontalDragEnd: (details) {
                  print("onHorizontalDragEnd");
                },
                onTapDown: (details) {
                  print("down");
                },
                onTapUp: (details) {
                  print("up");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
