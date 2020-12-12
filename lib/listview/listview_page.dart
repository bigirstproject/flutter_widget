import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListViewPage"),
      ),
      body: NotificationListener(
        onNotification: (notification) {
          switch (notification.runtimeType) {
            case ScrollStartNotification:
              print("ListViewPage 开始滚动");
              break;
            case ScrollUpdateNotification:
              print("ListViewPage 正在滚动");
              break;
            case ScrollEndNotification:
              print("ListViewPage 滚动停止");
              break;
            case OverscrollNotification:
              print("ListViewPage 滚动到边界");
              break;
              return true;
          }
          return true;
        },
        child: listViewDefault(addData()),
        // body: listViewListTile(addData()),
        // body: listViewListTile(addData()),
        // body: listViewLayoutBuilder(addData()),
        // body: listViewLayoutSeparated(addData()),
        // body: listViewLayoutCustom(addData()),
      ),
    );
  }

  ///listView custom 构建
  Widget listViewLayoutCustom(list) {
//    return ListView.custom(childrenDelegate: new MyChildrenDelegate());
    return ListView.custom(
      scrollDirection: Axis.horizontal,
      itemExtent: 100.0,
      reverse: false,
      childrenDelegate: MyChildrenDelegate(
        (BuildContext context, int i) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                new Text(
                  "${list[i].name}",
                  style: new TextStyle(fontSize: 18.0, color: Colors.red),
                ),
                new Text(
                  "${list[i].age}",
                  style: new TextStyle(fontSize: 18.0, color: Colors.green),
                ),
                new Text(
                  "${list[i].content}",
                  style: new TextStyle(fontSize: 18.0, color: Colors.blue),
                ),
              ],
            ),
          );
        },
        childCount: list.length,
      ),
      cacheExtent: 10.0,
    );
  }

  ///  listView separated 构建 用于多类型 分割
  Widget listViewLayoutSeparated(List<BaseBean> list) {
    return ListView.separated(
      itemCount: list?.length ?? 0,
      separatorBuilder: (content, index) {
        //和itemBuilder 同级别的执行
        if (index == 2) {
          return new Container(
            height: 40.0,
            child: new Center(
              child: new Text("类型1"),
            ),
            color: Colors.red,
          );
        } else if (index == 7) {
          return new Container(
            height: 40.0,
            child: new Center(
              child: new Text("类型2"),
            ),
            color: Colors.blue,
          );
        } else if (index == 14) {
          return new Container(
            height: 40.0,
            child: new Center(
              child: new Text("类型3"),
            ),
            color: Colors.yellow,
          );
        } else {
          return new Container();
        }
      },
      itemBuilder: (content, i) {
        return new InkWell(
          child: new Container(
              height: 30.0,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text(
                    "${list[i].name}",
                    style: new TextStyle(fontSize: 18.0, color: Colors.red),
                  ),
                  new Text(
                    "${list[i].age}",
                    style: new TextStyle(fontSize: 18.0, color: Colors.green),
                  ),
                  new Text(
                    "${list[i].content}",
                    style: new TextStyle(fontSize: 18.0, color: Colors.blue),
                  ),
                ],
              )),
          onTap: () {
            print("1111");
          },
        );
//      return ;
      },
    );
  }

  ///listView builder 构建
  Widget listViewLayoutBuilder(List<BaseBean> list) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10.0),
      reverse: false,
      // primary: true,
      itemExtent: 50.0,
      shrinkWrap: true,
      itemCount: list.length,
      cacheExtent: 10.0,
      physics: AlwaysScrollableScrollPhysics(),
      controller: ScrollController(),
      itemBuilder: (context, i) {
        print("ListViewPage i = ${i}");
        return Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text(
              "${list[i].name}",
              style: TextStyle(fontSize: 18.0, color: Colors.red),
            ),
            new Text(
              "${list[i].age}",
              style: TextStyle(fontSize: 18.0, color: Colors.green),
            ),
            new Text(
              "${list[i].content}",
              style: TextStyle(fontSize: 18.0, color: Colors.blue),
            ),
          ],
        ));
      },
    );
  }

  /// ListTile代码
  Widget listViewListTile(List<BaseBean> list) {
    List<Widget> _list = new List();
    for (int i = 0; i < list.length; i++) {
      _list.add(new Center(
        child: ListTile(
          leading: Icon(Icons.list),
          title: Text(list[i].name),
          subtitle: Text(list[i].age.toString()),
          trailing: Icon(Icons.keyboard_arrow_right),
        ),
      ));
    }
    return ListView(
      children: _list,
    );
  }

  ///默认构建
  Widget listViewDefault(List<BaseBean> list) {
    List<Widget> _list = [];
    for (int i = 0; i < list.length; i++) {
      _list.add(Center(
        child: Text(list[i].age.toString()),
      ));
    }

// 添加分割线
    var divideList =
        ListTile.divideTiles(context: context, tiles: _list).toList();
    return NotificationListener(
      onNotification: (notification) {
        switch (notification.runtimeType) {
          case ScrollStartNotification:
            print("ListViewPage  listViewDefault开始滚动");
            break;
          case ScrollUpdateNotification:
            print("ListViewPage  listViewDefault正在滚动");
            break;
          case ScrollEndNotification:
            print("ListViewPage  listViewDefault滚动停止");
            break;
          case OverscrollNotification:
            print("ListViewPage  listViewDefault滚动到边界");
            break;
            return false;
        }
        print("ListViewPage  ${notification.runtimeType}");
        return false;
      },
      child: ListView(
        // 添加ListView控件
        // children: _list, // 无分割线
        children: divideList, // 添加分割线/
      ),
    );
  }

  List<BaseBean> addData() {
    List<BaseBean> list = [];
    for (int i = 0; i < 50; i++) {
      BaseBean baseBean = BaseBean(i + 1, "name${i}", "context${i}");
      list.add(baseBean);
    }
    return list;
  }
}

class BaseBean {
  final int age;
  final String name;
  final String content;

  BaseBean(this.age, this.name, this.content);
}

// ignore: slash_for_doc_comments
/**
 * 继承SliverChildBuilderDelegate  可以对列表的监听
 */
class MyChildrenDelegate extends SliverChildBuilderDelegate {
  MyChildrenDelegate(
    Widget Function(BuildContext, int) builder, {
    int childCount,
    bool addAutomaticKeepAlive = true,
    bool addRepaintBoundaries = true,
  }) : super(builder,
            childCount: childCount,
            addAutomaticKeepAlives: addAutomaticKeepAlive,
            addRepaintBoundaries: addRepaintBoundaries);

  ///监听 在可见的列表中 显示的第一个位置和最后一个位置
  @override
  void didFinishLayout(int firstIndex, int lastIndex) {
    print('firstIndex: $firstIndex, lastIndex: $lastIndex');
  }

  ///可不重写 重写不能为null  默认是true  添加进来的实例与之前的实例是否相同 相同返回true 反之false
  ///listView 暂时没有看到应用场景 源码中使用在 SliverFillViewport 中
  @override
  bool shouldRebuild(SliverChildBuilderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    print("oldDelegate$oldDelegate");
    return super.shouldRebuild(oldDelegate);
  }
}
