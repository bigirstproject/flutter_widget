import 'package:flutter/material.dart';

class CustomScrollViewToListview extends StatefulWidget {
  @override
  _CustomScrollViewToListviewState createState() =>
      _CustomScrollViewToListviewState();
}

class _CustomScrollViewToListviewState
    extends State<CustomScrollViewToListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CustomScrollViewToListview"),
      ),
      body: Container(),
      // body: CustomScrollView1(),
    );
  }
}

class CustomScrollView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      ListView.builder(
          itemCount: 30,
          itemExtent: 50,
          itemBuilder: (BuildContext context, int index) {
            return Align(
              child: Text("$index"),
            );
          })
    ]);
  }
}
