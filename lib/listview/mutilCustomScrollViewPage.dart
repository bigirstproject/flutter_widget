import 'package:flutter/material.dart';

class MutilCustomScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          title: Text("标题"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: () {})
          ],
          primary: true,
          pinned: true,
          centerTitle: true,
          expandedHeight: 250.0,
          backgroundColor: Colors.blue,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "http://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverFixedExtentList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.deepPurpleAccent,
                alignment: Alignment.center,
                child: Text("这只是中间type"),
              );
            }, childCount: 1),
            itemExtent: 60),
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverGrid(
              delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
                  color: index % 2 == 0 ? Colors.greenAccent : Colors.yellow,
                  alignment: Alignment.center,
                  child: Text("$index"),
                );
              }, childCount: 8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1)),
        ),
        SliverFixedExtentList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                height: 30,
                color: index % 2 == 0 ? Colors.red : Colors.purpleAccent,
                alignment: Alignment.center,
                child: Text("$index"),
              );
            }, childCount: 20),
            itemExtent: 50),
        SliverFixedExtentList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.deepPurpleAccent,
                alignment: Alignment.center,
                child: Text("这只是一个字端"),
              );
            }, childCount: 1),
            itemExtent: 60),
        SliverFixedExtentList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                child: Image.network(
                  "http://b-ssl.duitang.com/uploads/item/201208/08/20120808125749_UxUu8.jpeg",
                  height: 360,
                  fit: BoxFit.cover,
                ),
              );
            }, childCount: 1),
            itemExtent: 360),
      ],
    );
  }
}


