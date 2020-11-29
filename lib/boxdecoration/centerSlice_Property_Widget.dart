//centerSlice Property
//关联问题:
//https://github.com/flutter/flutter/issues/16098

import 'package:flutter/material.dart';

class centerSlice_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
              // image: AssetImage("assets/images/test.png"),
              image: AssetImage("assets/images/timg.jpeg"),
              // centerSlice:  Rect.fromLTWH(10.0,10.0, 20.0, 200.0),
              // colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.9), BlendMode.src),
              fit: BoxFit.contain,
            )
        ),
        child: Container(

          //width: 110.0,
          //height: 110.0,
          width: 350.0,
          height: 450.0,
        ),
      ),
    );
  }
}