//Border Property
import 'package:flutter/material.dart';

class Border_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              // border: Border.all(
              //     color: Colors.green,
              //     width: 5.9,
              //     style: BorderStyle.solid
              // ),
              border: Border(
                  top: BorderSide(
                      color: Colors.green,
                      width: 5.0,
                      style: BorderStyle.solid
                  )
              ),
              image: DecorationImage(
                  image:AssetImage("assets/images/timg.jpeg")
              )
          ),
        ),
      ),
    );
  }
}