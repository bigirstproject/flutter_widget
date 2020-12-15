import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class PageViewDemo extends StatefulWidget {
  @override
  _PageViewDemoState createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("PageViewPage"),
        ),
        body: ListView(
          itemExtent: 300,
          children: [
            PageView1(),
            PageView2(),
            PageView3(),
            PageView4(),
          ],
        ));
  }
}

class PageView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      // reverse:true,
      // pageSnapping:false,
      onPageChanged: (int index) {
        print("index ${index}");
      },
      dragStartBehavior: DragStartBehavior.start,
      children: <Widget>[
        Container(
          color: Colors.red,
          child: Center(
            child: Text(
              '第一页',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              '第二页',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.green,
          child: Center(
            child: Text(
              '第三页',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Container(
          color: Colors.blueGrey,
          child: Center(
            child: Text(
              '第四页',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    );
  }
}

class PageView2 extends StatelessWidget {
  var urls = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607169810607&di=1f21ecaf45239827f41b45721a512f47&imgtype=0&src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F43%2F30033%2Fc6cefe42f2d55ada_1280x1024.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043076&di=13fdfd969ddfec3b65f4bea5f3d4145e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F02%2F38%2F01300000237560123245382609951.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return Center(
          child: Image.network(urls[index], fit: BoxFit.cover),
        );
      },
      itemCount: urls.length,
    );
  }
}

class PageView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.custom(
        childrenDelegate:
            SliverChildBuilderDelegate((BuildContext context, int index) {
      return Container(
        color: Colors.blue[100 * (index + 1 % 9)],
        child: Center(
          child: Text('这里是子 $index'),
        ),
      );
    }, childCount: 10));
  }
}

class PageView4 extends StatefulWidget {
  @override
  _PageView4State createState() => _PageView4State();
}

class _PageView4State extends State<PageView4> {
  var urls = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607169810607&di=1f21ecaf45239827f41b45721a512f47&imgtype=0&src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F43%2F30033%2Fc6cefe42f2d55ada_1280x1024.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043076&di=13fdfd969ddfec3b65f4bea5f3d4145e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F02%2F38%2F01300000237560123245382609951.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607169810607&di=1f21ecaf45239827f41b45721a512f47&imgtype=0&src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F43%2F30033%2Fc6cefe42f2d55ada_1280x1024.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043076&di=13fdfd969ddfec3b65f4bea5f3d4145e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F02%2F38%2F01300000237560123245382609951.jpg"
  ];

  PageController controller = PageController();
  var currentPageValue = 0.0;

  @override
  void initState() {
    controller.addListener(() {
      // print("currentPageValue  ${currentPageValue}");
      setState(() {
        currentPageValue = controller.page;
        print("currentPageValue position  ${controller.position}");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: urls.length,
      controller: controller,
      onPageChanged: (int index) {
        print("index ${index}");
      },
      itemBuilder: (context, index) {
        // print("currentPageValue   ${currentPageValue}    ${currentPageValue - index}");
        if (index == currentPageValue.floor()) {
          return Transform(
            transform: Matrix4.identity()..rotateX(currentPageValue - index),
            child: Image.network(urls[index], fit: BoxFit.cover),
          );
        } else if (index == currentPageValue.floor() + 1) {
          return Transform(
            transform: Matrix4.identity()..rotateX(currentPageValue - index),
            child: Image.network(urls[index], fit: BoxFit.cover),
          );
        } else {
          return Image.network(urls[index], fit: BoxFit.cover);
        }
      },
    );
  }
}
