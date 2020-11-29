import 'package:flutter/material.dart';

class CustomStackViewPage extends StatefulWidget {
  @override
  _CustomStackViewPageState createState() => _CustomStackViewPageState();
}

class _CustomStackViewPageState extends State<CustomStackViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomStackViewPage"),
        actions: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PositionScreen()));
            },
            color: Colors.blue,
            child: Icon(Icons.add),
          ),
        ],
      ),
      body: Stack(
        textDirection:TextDirection.ltr,
        // fit: StackFit.expand,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.red,
          ),
          Container(
            width: 90,
            height: 90,
            color: Colors.blue,
          ),
          Container(
            width: 80,
            height: 80,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}


class PositionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postion Title"),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              color: Colors.black45,
            ),
          ),
          Positioned(
            top: 100.0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.blue,
              child: Text("第一个组件"),
            ),
          ),
          Positioned(
            top: 200,
            right: 100,
            child: Container(
              color: Colors.yellow,
              child: Text("第二个组件"),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.red,
              child: Text("第三个组件"),
            ),
          ),
        ],
      ),
    );
  }
}