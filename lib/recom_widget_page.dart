import 'package:flutter/material.dart';
import 'package:flutter_app01/listview/CsWidget.dart';
import 'package:flutter_app01/listview/CustomScrollViewWidget.dart';
import 'package:flutter_app01/listview/listview_page.dart';
import 'package:flutter_app01/listview/mutilCustomScrollViewPage.dart';

class RecomWidgetPage extends StatefulWidget {
  @override
  _RecomWidgetPageState createState() => _RecomWidgetPageState();
}

class _RecomWidgetPageState extends State<RecomWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RecomWidgetPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("go to ListViewPage"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ListViewPage();
                }));
              },
            ),

            RaisedButton(
              child: Text("go to CsWidget"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CsWidget();
                }));
              },
            ),
            RaisedButton(
              child: Text("go to CustomScrollViewPage"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CustomScrollViewPage();
                }));
              },
            ),
            RaisedButton(
              child: Text("go to MutilCustomScrollViewPage"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return MutilCustomScrollViewPage();
                }));
              },
            ),


          ],
        ),
      ),
    );
  }
}
