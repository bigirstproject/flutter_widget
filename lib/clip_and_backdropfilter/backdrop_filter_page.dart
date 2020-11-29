import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropFilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Stack(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Image(
                image: NetworkImage(
                    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605352251911&di=739bc8e1b3d6cfbbe7f02ab213efda25&imgtype=0&src=http%3A%2F%2Fpic43.nipic.com%2F20140706%2F9129085_124832187000_2.jpg"),
                fit: BoxFit.cover),
          ),
          Center(
            // widthFactor: 100.0,
            // heightFactor: 2.0,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                alignment: Alignment(0, 0),
                // color: Colors.blue,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.white, Colors.cyan],
                    stops: [0.0, 0.5, 1],
                    begin: Alignment(-1, 0),
                    end: Alignment(1, 0),
                    tileMode: TileMode.clamp,
                  ),
                  // gradient: RadialGradient(
                  //     colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
                  //     center: Alignment(0, 0),
                  //     radius: 0.5,
                  //     tileMode: TileMode.clamp,
                  //     stops: [0.4, 0.5, 0.6, 0.7]
                  // )
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605352251911&di=abee78cd507175a5c436be1787ef72e5&imgtype=0&src=http%3A%2F%2Fimg.pconline.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fbbs6%2F1006%2F05%2Fc0%2F4122720_1275750501199_1024x1024.jpg",
                        scale: 1),
                    // fit: BoxFit.fill,
                    repeat:ImageRepeat.repeatY,
                    matchTextDirection: true,
                    // centerSlice:  Rect.fromLTWH(10.0, 10.0, 50.0, 90.0),
                    // scale: 0.1,
                  ),
                ),

                width: 350.0,
                height: 450.0,
                child: Text("ceshi"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
