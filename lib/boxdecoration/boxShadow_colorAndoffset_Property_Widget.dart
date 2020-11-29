//boxShadow Property
//color和offset
import 'package:flutter/material.dart';

class boxShadow_colorAndoffset_Property_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200.0,
        height: 200.0,
        // color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.green, width: 5.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.only(
                topLeft: Radius.elliptical(40.0, 10.0),
                bottomLeft: Radius.circular(20.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(10.0, 10.0),
                  blurRadius: 30,
                  spreadRadius: 20.0,
                ),
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(20.0, 10.0),
                  blurRadius: 20.0,
                  spreadRadius: 40.0,
                ),
                BoxShadow(
                  color: Colors.yellow,
                  offset: Offset(20.0, 10.0),
                  blurRadius: 20.0,
                  spreadRadius: 20.0,
                ),
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(10.0, 5.0),
                  blurRadius: 20.0,
                  spreadRadius: 5.0,
                )
              ],
              image:
                  DecorationImage(image: AssetImage("images/JL-Logo-150.png"))),
        ),
      ),
    );
  }
}
