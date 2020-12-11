import 'package:flutter/material.dart';
import 'package:flutter_app01/futurebuilder/FutureBuilderPage.dart';
import 'package:flutter_app01/futurebuilder/StreamBuilderPage.dart';

class FutureBuildertabPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("FutureBuildertabPage"),
        ),
        body: ListView(
          children: [
            RaisedButton(
              child: Text("go to next_tab_page"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return FutureBuilderPage();
                }));
              },
            ),
            RaisedButton(
              child: Text("go to StreamBuilderPage"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return StreamBuilderPage();
                }));
              },
            ),
          ],
        ));
  }
}
