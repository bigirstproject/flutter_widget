import 'package:flutter/material.dart';
import 'package:flutter_app01/listview/CsWidget.dart';
import 'package:flutter_app01/listview/CustomScrollViewWidget.dart';
import 'package:flutter_app01/listview/custom_scroll_view_test_route.dart';
import 'package:flutter_app01/listview/custom_scroll_view_to_listview.dart';
import 'package:flutter_app01/listview/listview_page.dart';
import 'package:flutter_app01/listview/mutilCustomScrollViewPage.dart';
import 'package:flutter_app01/listview/scrollable_page_demo.dart';

import 'ScrollNotificationTestRoute.dart';

class ScrollablePage extends StatefulWidget {
  @override
  _ScrollablePageState createState() => _ScrollablePageState();
}

class _ScrollablePageState extends State<ScrollablePage> {
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
              child: Text("go to ScrollablePageDemo"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ScrollablePageDemo();
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
              child: Text("go to ListViewPage"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ListViewPage();
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
            RaisedButton(
              child: Text("go to CustomScrollViewTestRoute"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CustomScrollViewTestRoute();
                }));
              },
            ),
            RaisedButton(
              child: Text("go to CustomScrollViewToListview"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CustomScrollViewToListview();
                }));
              },
            ),
            RaisedButton(
              child: Text("go to ScrollNotificationTestRoute"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ScrollNotificationTestRoute();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
