import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  var urls = [
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1608042043077&di=4b8d148d3323fa8c6d553e48b8f3e5cf&imgtype=0&src=http%3A%2F%2Fa4.att.hudong.com%2F27%2F67%2F01300000921826141299672233506.jpg"
  ];

  SwiperController controller;

  double start = -40.0;
  double end = 0.0;

  @override
  void initState() {
    super.initState();
    controller = SwiperController();
    controller.addListener(() {
      print("SwiperPage controller.index ${controller?.index}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SwiperPage"),
      ),
      body: Container(
        alignment: AlignmentDirectional(0.0, 0.0),
        height: 322,
        color: Colors.red,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            _buildPositioned(),
            _buildbutton(),
            // _buildTransform(),
          ],
        ),
      ),
    );
  }

  Widget _buildbutton() {
    return PositionedDirectional(
      start: 10,
      top: 50,
      child: Container(
        width: 100,
        height: 50,
        child: RaisedButton(
          child: Text("RaisedButton"),
          onPressed: () {
            controller?.move(3, animation: true);
          },
        ),
      ),
    );
  }

  Widget _buildTransform() {
    return Transform.translate(
      offset: Offset(-20.0, 0.0),
      child: _buildSwiper(),
    );
  }

  Widget _buildPositioned() {
    return PositionedDirectional(
      bottom: 60,
      start: start,
      end: end,
      height: 200,
      child: _buildSwiper(),
    );
  }

  Widget _buildSwiper() {
    return Swiper(
      // customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
      //     .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate(
      //         [Offset(-370.0, -40.0), Offset(0.0, 0.0), Offset(370.0, -40.0)]),
      // itemHeight: 200.0,
      // itemWidth: 200.0,
      // containerHeight: 200,
      // containerWidth: 200,
      controller: controller,
      scrollDirection: Axis.horizontal,
      // index: 0,
      itemCount: urls.length,
      viewportFraction: 0.8,
      autoplayDelay: 5000,
      duration: 500,
      scale: 1,
      fade: 0.9,
      loop: false,
      autoplay: false,
      // layout: SwiperLayout.CUSTOM,
      outer: false,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.yellowAccent,
          width: 200,
          height: 200,
          margin: EdgeInsetsDirectional.only(start: 10, end: 10),
          child: Image.network(urls[index], fit: BoxFit.cover),
        );
      },
      onIndexChanged: (index) {
        print("SwiperPage index ${index}");
        if (urls.length - 1 == index) {
          start = 0;
          end = -40;
        } else {
          start = -40;
          end = 0;
        }
        setState(() {});
      },
    );
  }
}
