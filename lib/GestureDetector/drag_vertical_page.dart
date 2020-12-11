import 'package:flutter/material.dart';

class DragVerticalPage extends StatefulWidget {
  @override
  _DragVerticalPageState createState() => _DragVerticalPageState();
}

class _DragVerticalPageState extends State<DragVerticalPage> {
  double _top = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GesTrueDetectorTab"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            child: GestureDetector(
                child: CircleAvatar(child: Text("A")),
                //垂直方向拖动事件
                onVerticalDragUpdate: (DragUpdateDetails details) {
                  setState(() {
                    _top += details.delta.dy;
                  });
                }),
          )
        ],
      ),
    );
  }
}
