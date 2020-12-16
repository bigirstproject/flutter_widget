// 路由A
import 'package:flutter/material.dart';

class HeroAnimationRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimatedImage"),
      ),
      body: Container(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          child: Hero(
            tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
            child: ClipOval(
              child: Image.asset(
                "assets/images/timg.jpeg",
                width: 100.0,
                height: 100.0,
              ),
            ),
          ),
          onTap: () {

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (BuildContext context) {
            //       return HeroAnimationRouteB();
            //     },
            //   ),
            // );

            //打开B路由
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (BuildContext context, Animation animation,
                    Animation secondaryAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: HeroAnimationRouteB(),
                  );
                },
              ),
            );


          },
        ),
      ),
    );
  }
}

class HeroAnimationRouteB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("原图"),
      ),
      body: Center(
        child: Hero(
          tag: "avatar", //唯一标记，前后两个路由页Hero的tag必须相同
          child: Image.asset("assets/images/timg.jpeg"),
        ),
      ),
    );
  }
}
