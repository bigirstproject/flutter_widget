import 'package:flutter/material.dart';

class ScrollablePageDemo extends StatefulWidget {
  @override
  _ScrollablePageDemoState createState() => _ScrollablePageDemoState();
}

class _ScrollablePageDemoState extends State<ScrollablePageDemo> {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return Scaffold(
        appBar: AppBar(
          title: Text("ScrollablePageDemo"),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                //动态创建一个List<Widget>
                children: str
                    .split("")
                    //每一个字母都用一个Text显示,字体为原来的两倍
                    .map((c) => Text(
                          c,
                          textScaleFactor: 2.0,
                        ))
                    .toList(),
              ),
            ),
          ),
        ));
  }
}
