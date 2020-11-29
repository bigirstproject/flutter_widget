//shape Property
import 'package:flutter/material.dart';

class shape_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                  color: Colors.green,
                  width: 5.0,
                  style: BorderStyle.solid
              ),
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.red,
              //       offset: Offset(20.0, 10.0),
              //       blurRadius: 20.0,
              //       spreadRadius: 40.0
              //   )
              // ],
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage("assets/images/timg.jpeg")
              )
          ),
        ),
      ),
    );
  }
}