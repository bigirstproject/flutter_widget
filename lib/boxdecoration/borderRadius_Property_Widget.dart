//borderRadius Property
//BorderRadius.all
import 'package:flutter/material.dart';

class borderRadius_Property_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350.0,
        height: 350.0,
        // color: Colors.white,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.green, width: 5.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              image: DecorationImage(
                image: AssetImage("assets/images/timg.jpeg"),
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }
}
