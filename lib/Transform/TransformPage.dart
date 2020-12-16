import 'dart:math' as math;

import 'package:flutter/material.dart';

class TransFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          children: [
            Transform(
              alignment: Alignment(0.0, 0.0),
              origin: Offset(100.0, 100.0),
              transform: Matrix4.skewY(0.2), //沿Y轴倾斜0.3弧度
              child: Container(
                padding: const EdgeInsets.all(18.0),
                color: Colors.deepOrange,
                child: const Text('Apartment for rent!'),
              ),
            ),
            DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(color: Colors.blue),
              //默认原点为左上角，左移20像素，向上平移5像素
              child: Transform.translate(
                offset: Offset(-20.0, 5.0),
                child: Text("Hello world"),
              ),
            ),
            SizedBox(height: 40),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.white),
              child: Transform.rotate(
                //旋转90度
                angle: math.pi / 2,
                child: Text("Hello world"),
              ),
            ),
            SizedBox(height: 40),
            DecoratedBox(
                decoration: BoxDecoration(color: Colors.amberAccent),
                child: Transform.scale(
                    scale: 1.2, //放大到1.5倍
                    child: Text("Hello world"))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  //将Transform.rotate换成RotatedBox
                  child: RotatedBox(
                    quarterTurns: 1, //旋转90度(1/4圈)
                    child: Text("Hello world"),
                  ),
                ),
                Text(
                  "你好",
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                )
              ],
            ),
          ],
        ));
  }
}
