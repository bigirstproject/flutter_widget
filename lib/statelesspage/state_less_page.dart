import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app01/webview/PlatformViewVerticalGestureRecognizer.dart';
import 'package:flutter_app01/webview/custom_gesture_recognizer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TestStateLessPage extends StatefulWidget {
  @override
  _TestStateLessPageState createState() => _TestStateLessPageState();
}

class _TestStateLessPageState extends State<TestStateLessPage> {
  String text = "test";

  @override
  Widget build(BuildContext context) {
    print("build _TestStateLessPageState");
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 100,
        ),
        RaisedButton(
          child: Text("test"),
          onPressed: () {
            setState(() {
              text = "testtest";
            });
          },
        ),
        TestLessPage(text),
      ],
    ));
  }
}

class TestLessPage extends StatelessWidget {
  final String text;

  TestLessPage(this.text);

  @override
  Widget build(BuildContext context) {
    print("build TestLessPage");
    return Column(children: [
      Text(text),
      TestFulPage(),
      WebViewExample(),
    ]);
  }
}

class TestFulPage extends StatefulWidget {
  String text = "TestFulPage";
  bool showWebview = false;

  @override
  _TestFulPageState createState() => _TestFulPageState();
}

class _TestFulPageState extends State<TestFulPage> {
  @override
  Widget build(BuildContext context) {
    print("build _TestFulPageState");
    return Column(children: [
      widget.showWebview ? WebViewExample() : SizedBox(),
      RaisedButton(
        child: Text(widget.text),
        onPressed: () {
          setState(() {
            widget.showWebview = true;
            widget.text = "testtesttest";
          });
        },
      ),
    ]);
  }
}

class WebViewExample extends StatefulWidget {
  final double  height;

  WebViewExample({this.height});
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    var verticalGestures1 = Factory<CustomGestureRecognizer>(
        () => CustomGestureRecognizer(maxScreenOffsetX:400));
    var verticalGestures2 = Factory<PlatformViewVerticalGestureRecognizer>(
            () => PlatformViewVerticalGestureRecognizer());
    var gestureSet = [verticalGestures1].toSet();
    print("build WebViewExampleState");
    return Container(
      key:ObjectKey("1"),
      width: double.infinity,
      height: widget.height??200,
      child: WebView(
        initialUrl: 'https://pub.dev/packages/webview_flutter',
        gestureNavigationEnabled: true,
        gestureRecognizers: gestureSet,
      ),
    );
  }
}

