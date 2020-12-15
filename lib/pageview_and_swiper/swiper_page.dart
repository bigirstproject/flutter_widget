import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  var urls = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607169810607&di=1f21ecaf45239827f41b45721a512f47&imgtype=0&src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F43%2F30033%2Fc6cefe42f2d55ada_1280x1024.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043076&di=13fdfd969ddfec3b65f4bea5f3d4145e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F02%2F38%2F01300000237560123245382609951.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1607169810607&di=1f21ecaf45239827f41b45721a512f47&imgtype=0&src=http%3A%2F%2Fdik.img.kttpdq.com%2Fpic%2F43%2F30033%2Fc6cefe42f2d55ada_1280x1024.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043076&di=13fdfd969ddfec3b65f4bea5f3d4145e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F02%2F38%2F01300000237560123245382609951.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SwiperPage"),
        ),
        body: Swiper(
            customLayoutOption:
                new CustomLayoutOption(startIndex: -1, stateCount: 3)
                    .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
              new Offset(-370.0, -40.0),
              new Offset(0.0, 0.0),
              new Offset(370.0, -40.0)
            ]),
            itemHeight: 300.0,
            itemWidth: 300.0,
            containerHeight: 400,
            containerWidth: 400,
            scrollDirection: Axis.horizontal,
            index: 0,
            itemCount: urls.length,
            viewportFraction: 0.8,
            autoplayDelay: 10000,
            duration: 1000,
            scale: 1,
            // fade: 0.5,
            loop: false,
            autoplay: false,
            // layout: SwiperLayout.DEFAULT,
            outer: false,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: Image.network(urls[index], fit: BoxFit.cover),
              );
            }));
  }
}
