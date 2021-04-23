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
              "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fcar0.autoimg.cn%2Fupload%2Fspec%2F4945%2Fu_20120220072722314264.jpg&refer=http%3A%2F%2Fcar0.autoimg.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621764710&t=1cb6531d591028276682cf7447b43c64",
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
                  'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1977046168,368269341&fm=26&gp=0.jpg',
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
