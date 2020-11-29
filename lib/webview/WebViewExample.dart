
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'PlatformViewVerticalGestureRecognizer.dart';
import 'custom_gesture_recognizer.dart';

//"url = https://github.com/flutter/flutter/issues/35394 "

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
    var gestureSet = [verticalGestures2].toSet();
    print("build WebViewExampleState");
    return Container(
      key:ObjectKey("1"),
      width: double.infinity,
      height: widget.height??200,
      child: WebView(
        initialUrl: 'https://stackoom.com/question/3rSRI/将水平滚动与WebView结合使用时的滚动优先级',
        gestureNavigationEnabled: true,
        gestureRecognizers: gestureSet,
      ),
    );
  }
}

