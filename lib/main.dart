import 'package:flutter/material.dart';
import 'package:flutter_app01/Animation/animation_tab.dart';
import 'package:flutter_app01/EventBus/EventBusTab.dart';
import 'package:flutter_app01/GestureDetector/gesture_detector_tab.dart';
import 'package:flutter_app01/PointerEvent/pointer_event_tab_page.dart';
import 'package:flutter_app01/Transform/TransformPage.dart';
import 'package:flutter_app01/boxdecoration/Border_Property_Widget.dart';
import 'package:flutter_app01/boxdecoration/ColorFilter_Property_Widget.dart';
import 'package:flutter_app01/boxdecoration/borderRadius_Property_Widget.dart';
import 'package:flutter_app01/boxdecoration/boxShadow_colorAndoffset_Property_Widget.dart';
import 'package:flutter_app01/boxdecoration/centerSlice_Property_Widget.dart';
import 'package:flutter_app01/boxdecoration/shape_Property_Widget.dart';
import 'package:flutter_app01/container/Transform_Property.dart';
import 'package:flutter_app01/container/container_all_page.dart';
import 'package:flutter_app01/container/container_one_page.dart';
import 'package:flutter_app01/container/container_page.dart';
import 'package:flutter_app01/futurebuilder/FutureBuildertabPage.dart';
import 'package:flutter_app01/listview/scrollable_page.dart';
import 'package:flutter_app01/row_column/Row_Text_Widget.dart';
import 'package:flutter_app01/tabpage/stack_page.dart';
import 'package:flutter_app01/webview/webView_test_page.dart';

import 'clip_and_backdropfilter/backdrop_filter_page.dart';
import 'clip_and_backdropfilter/clip_rect_page.dart';
import 'tabpage/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("go to AnimationTab"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return AnimationTab();
                  }));
            },
          ),
          RaisedButton(
            child: Text("go to EventBusTab"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return EventBusTab();
                  }));
            },
          ),
          RaisedButton(
            child: Text("go to GesTrueDetectorTab"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return GesTrueDetectorTab();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to PointerEventTabPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PointerEventTabPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to FutureBuildertabPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FutureBuildertabPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to next_tab_page"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NextPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to webview"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return WebViewTestPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to TransFormPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return TransFormPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to StackPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return StackPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to ScrollablePage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ScrollablePage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to picture"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return BackDropFilterPage();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to centerSlice_Property_Widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return centerSlice_Property_Widget();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to ColorFilter_Property_Widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ColorFilter_Property_Widget();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to Border_Property_Widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Border_Property_Widget();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to borderRadius_Property_Widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return borderRadius_Property_Widget();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to boxShadow_colorAndoffset_Property_Widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return boxShadow_colorAndoffset_Property_Widget();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to shape_Property_Widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return shape_Property_Widget();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to Constraints_Property"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Constraints_Property();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to Constraints_All_Property"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Constraints_All_Property();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to Constraints_One_Property"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Constraints_One_Property();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to Transform_Property"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return Transform_Property();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to CrossAxisAlignment_start_Propery_Widget"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return CrossAxisAlignment_start_Propery_Widget();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to clipRectPage"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return clipRectPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}
