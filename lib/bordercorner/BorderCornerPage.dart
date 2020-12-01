import 'dart:ui';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class BorderCornerPage extends StatefulWidget {
  @override
  _BorderCornerPageState createState() => _BorderCornerPageState();
}

class _BorderCornerPageState extends State<BorderCornerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatePage"),
      ),
      // body: ListView(
      //   children: [
      //     getView1(),
      //     getView2(),
      //     getView3(),
      //     getView4(),
      //     getView5(),
      //     getView6()
      //   ],
      // )
      body: getView6(),
    );
  }

  Widget getView1() {
    var widget = ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
    return widget;
  }

  Widget getView2() {
    var widget = Container(
      margin: EdgeInsets.only(left: 40, top: 40, bottom: 40, right: 40),
      //设置 child 居中
      alignment: AlignmentDirectional(0, 0),
      height: 150,
      width: 150,
      //边框设置
      decoration: BoxDecoration(
        //背景
        color: Colors.white,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        //设置四周边框
        border: Border.all(width: 2, color: Color.fromRGBO(59, 221, 146, 0.50)),
        // image: DecorationImage(
        //     image: NetworkImage(
        //         "http://pic16.nipic.com/20110827/2127531_105629251000_2.jpg")),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(23.0)),
        child: ExtendedImage.network(
          "http://pic16.nipic.com/20110827/2127531_105629251000_2.jpg",
          height: 150,
          width: 150,
          fit: BoxFit.cover,
          // shape: BoxShape.rectangle,
          // borderRadius: BorderRadius.all(Radius.circular(14)),
          // border:
          //     Border.all(width: 5, color: Color.fromRGBO(59, 221, 146, 0.50)),
          cache: true,
        ),
      ),
    );
    return widget;
  }

  Widget getView3() {
    var widget = Container(
      margin: EdgeInsets.only(left: 40, top: 40),
      child: new Material(
        //INK可以实现装饰容器
        child: new Ink(
          //用ink圆角矩形
          // color: Colors.red,
          decoration: new BoxDecoration(
            //背景
            color: Colors.white,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            //设置四周边框
            border: new Border.all(width: 1, color: Colors.red),
          ),
          child: new InkWell(
              //圆角设置,给水波纹也设置同样的圆角
              //如果这里不设置就会出现矩形的水波纹效果
              borderRadius: new BorderRadius.circular(25.0),
              //设置点击事件回调
              onTap: () {},
              child: Container(
                //设置 child 居中
                alignment: Alignment(0, 0),
                height: 50,
                width: 300,
                child: Text("点击 Container 圆角边框"),
              )),
        ),
      ),
    );
    return widget;
  }

  Widget getView4() {
    var widget = Container(
      margin: EdgeInsets.only(left: 40, top: 40),
      child: new Material(
        child: new Ink(
          //设置背景
          decoration: new BoxDecoration(
            //背景
            color: Colors.white,
            //设置四周圆角 角度
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            //设置四周边框
            border: new Border.all(width: 1, color: Colors.red),
          ),
          child: new InkResponse(
            borderRadius: new BorderRadius.all(new Radius.circular(25.0)),
            //点击或者toch控件高亮时显示的控件在控件上层,水波纹下层
            //    highlightColor: Colors.deepPurple,
            //点击或者toch控件高亮的shape形状
            highlightShape: BoxShape.rectangle,
            //.InkResponse内部的radius这个需要注意的是，我们需要半径大于控件的宽，如果radius过小，显示的水波纹就是一个很小的圆，
            //水波纹的半径
            radius: 300.0,
            //水波纹的颜色
            splashColor: Colors.yellow,
            //true表示要剪裁水波纹响应的界面   false不剪裁  如果控件是圆角不剪裁的话水波纹是矩形
            containedInkWell: true,
            //点击事件
            onTap: () {
              print("click");
            },
            child: Container(
              //设置 child 居中
              alignment: Alignment(0, 0),
              height: 50,
              width: 300,
              child: Text("点击 Container 圆角边框"),
            ),
          ),
        ),
      ),
    );
    return widget;
  }

  Widget getView5() {
    var widget = Container(
      margin: EdgeInsets.only(left: 40, top: 40),
      child: Container(
        // color: Colors.red,
        child: Stack(
          // alignment: Alignment.topLeft,
          children: [
            Container(
              // color: Colors.red,
              height: 34,
              // width: 121,
              margin: EdgeInsets.only(top: 0),
              child: ClipRect(
                  child: BackdropFilter(
                      //背景滤镜(毛玻璃)
                      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 5),
                      child: Opacity(
                        opacity: 0.3,
                        child: Container(
                          height: 34,
                          // width: 121,
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                          decoration: BoxDecoration(
                            color: Color(0xB2E68529),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ))),
            ),
            Container(
              color: Colors.red,
              margin: EdgeInsets.only(top: 0, left: 2),
              // alignment: Alignment(0, 0),
              height: 34,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 28,
                    width: 28,
                    child: ClipOval(
                      child: ExtendedImage.network(
                        "http://pic16.nipic.com/20110827/2127531_105629251000_2.jpg",
                        fit: BoxFit.cover,
                        loadStateChanged: (state) {
                          switch (state.extendedImageLoadState) {
                            case LoadState.loading:
                              return Container(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator(),
                              );
                              break;
                            case LoadState.completed:
                              return null;
                              break;
                            case LoadState.failed:
                              return Container(
                                alignment: Alignment.center,
                                child: CircularProgressIndicator(),
                              );
                              break;
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 34,
                    // color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      "find_play_ongoing",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
    return widget;
  }

  Widget getView6() {
    var widget = Container(
      margin: EdgeInsets.only(left: 40, top: 40, bottom: 40, right: 40),
      //设置 child 居中
      // alignment: AlignmentDirectional(0, 0),
      height: 150,
      width: 150,
      //边框设置
      decoration: BoxDecoration(
        //背景
        // color: Colors.red,
        //设置四周圆角 角度
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        //设置四周边框
        border: Border.all(width: 5, color: Color.fromRGBO(59, 221, 146, 0.50)),
      ),
      child: ExtendedImage.network(
          "http://pic16.nipic.com/20110827/2127531_105629251000_2.jpg",
          height: 50,
          width: 50,
          fit: BoxFit.cover,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // border:
          //     Border.all(width: 5, color: Color.fromRGBO(59, 221, 146, 0.50)),
          cache: true,
        ),
    );
    return widget;
  }
}
