import 'package:flutter/material.dart';

class ScaleAnimationRoute extends StatefulWidget {
  @override
  _ScaleAnimationRouteState createState() => new _ScaleAnimationRouteState();
}

//需要继承TickerProvider，如果有多个AnimationController，则应该使用TickerProviderStateMixin。
class _ScaleAnimationRouteState extends State<ScaleAnimationRoute>
    with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  AnimationController controller1;
  Animation<int> alpha;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(seconds: 5), vsync: this);
    //图片宽高从0变到300
    animation = new Tween(begin: 0.0, end: 500.0).animate(controller);
    animation.addListener(() {
      print("animation.value  ${animation.value}");
      setState(() => {});
    });
    //启动动画(正向执行)
    controller.forward();

    controller1 = new AnimationController(
        duration: const Duration(seconds: 5), vsync: this);
    Animation curve =
        CurvedAnimation(parent: controller1, curve: Curves.easeOut);
    alpha = IntTween(begin: 0, end: 255).animate(curve);
    controller1.addListener(() {
      print("alpha.value  ${alpha.value}");
      setState(() => {});
    });
    controller1.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScaleAnimationRoute"),
      ),
      body: ListView(children: [
        Image.asset("assets/images/timg.jpeg",
            width: animation.value, height: animation.value, fit: BoxFit.cover),
        Container(
          width: 200,
          height: 200,
          alignment: Alignment(0, 0),
          color: Color.fromARGB(
              alpha.value, alpha.value, 255, 255),
          child: Text("text"),
        )
      ]),
    );
  }

  dispose() {
    //路由销毁时需要释放动画资源
    controller.dispose();
    controller1.dispose();
    super.dispose();
  }
}
