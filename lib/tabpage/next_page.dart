import 'package:flutter/material.dart';
import 'package:flutter_app01/statelesspage/state_less_page.dart';
import 'package:flutter_app01/webview/WebViewExample.dart' as custom;

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NextPage"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("go to TestStateLessPage"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return TestStateLessPage();
                }));
              },
            ),
            RaisedButton(
              child: Text("go to WebViewExample"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return custom.WebViewExample(height:double.infinity);
                    }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
