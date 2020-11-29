import 'dart:ui';

import 'package:flutter/material.dart';

class CsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: CustomScrollViewWidget(),
    );
  }
}

class CustomScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
          title: Text("标题"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.share), onPressed: () {})
          ],
          primary: false,
          pinned: false,
          centerTitle: true,
          expandedHeight: 300.0,
          backgroundColor: Colors.amber,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1605434123828&di=7b8b1dcf5692b6881561bf2242b713f9&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F22%2F59%2F19300001325156131228593878903.jpg",
              fit: BoxFit.cover,
            ),
          ),
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
        SliverAppBar(
          automaticallyImplyLeading: false,
          pinned: false,
          expandedHeight: 250.0,
          backgroundColor: Colors.red,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "http://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
