import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatefulWidget {
  @override
  _ConstrainedBoxPageState createState() => _ConstrainedBoxPageState();
}

class _ConstrainedBoxPageState extends State<ConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: double.infinity, //宽度尽可能大
            minHeight:50.0 //最小高度为50像素
            ),
        child: Container(height: 5.0, child: redBox),
      ),
    );
  }

  Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );
}
