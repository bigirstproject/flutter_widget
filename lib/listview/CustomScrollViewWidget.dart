import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context, CustomScrollViewPage);
              }),
          title: Text("标题"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: () {})
          ],
          // floating: true,
          // snap: true,
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
        SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                print("CustomScrollViewPage SliverPadding index = ${index}");
                return Container(
                  color: index % 2 == 0 ? Colors.greenAccent : Colors.yellow,
                  alignment: Alignment.center,
                  child: Text("$index"),
                );
              }, childCount: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 1)),
        ),
        SliverFixedExtentList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              print(
                  "CustomScrollViewPage SliverFixedExtentList index = ${index}");
              return Container(
                height: 30,
                color: index % 2 == 0 ? Colors.red : Colors.purpleAccent,
                alignment: Alignment.center,
                child: Text("$index"),
              );
            }, childCount: 20),
            itemExtent: 50),
      ],
    );
  }
}
