import 'package:flutter/material.dart';
import 'package:flutter_app01/webview/page_view_page.dart';
import 'package:flutter_app01/webview/tabbarview_page.dart';

class WebViewTestPage extends StatefulWidget {
  @override
  _WebViewTestPageState createState() => _WebViewTestPageState();
}

class _WebViewTestPageState extends State<WebViewTestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebViewTestPage"),
      ),
      body: ListView(
        children: [
          RaisedButton(
            child: Text("go to pageViewwebview"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PageViewPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to TabBarViewPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return TabBarViewPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
