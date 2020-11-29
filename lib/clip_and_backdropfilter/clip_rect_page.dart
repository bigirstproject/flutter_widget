import 'dart:ui';

import 'package:flutter/material.dart';

class clipRectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      fit: StackFit.loose,
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("assets/images/timg.jpeg"), //背景图片
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: BackdropFilter(
                //背景滤镜
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5), //背景模糊化
                child: Container(
                  // alignment: Alignment.center,
                  // color: Colors.grey.withOpacity(0.1),
                  // width: 100,
                  // height: 100,
                  // margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(
                        color: Colors.green.withOpacity(1),
                        width: 4,
                        style: BorderStyle.solid),
                  ),
                  // constraints: BoxConstraints(
                  //   minWidth: 100,
                  //   maxWidth: 200,
                  //   minHeight: 100,
                  //   maxHeight: 200,
                  // ),
                  child: Text(
                    "CHOCOLATECHOCOLATECHOCOLATECHOCOLATECHOCOLATECHOCOLATECHOCOLATECHOCOLATE",
                    //前景文字
                    style: TextStyle(fontSize: 5, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
