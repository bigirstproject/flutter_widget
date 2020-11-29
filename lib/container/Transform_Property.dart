//Transform Property
import 'package:flutter/material.dart';

class Transform_Property extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 66, 165, 245),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Container(
        margin: EdgeInsets.all(100.0),
        // color: Colors.green,
        child: Text("Flutter Cheatsheet"),
        transform: Matrix4.rotationX(0),
        clipBehavior: Clip.none,
        decoration: BoxDecoration(
            color: Colors.green,
            // border: Border.all(
            //     color: Colors.green,
            //     width: 5.9,
            //     style: BorderStyle.solid
            // ),
            border: Border(
                top: BorderSide(
                    color: Colors.red, width: 5.0, style: BorderStyle.solid)),
            image:
                DecorationImage(image: AssetImage("assets/images/timg.jpeg"))),
      ),
    );
  }
}
