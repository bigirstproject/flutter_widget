import 'package:flutter/material.dart';
import 'package:flutter_app01/Animation/AnimatedImage.dart';
import 'package:flutter_app01/Animation/AnimatedSwitcherCounterRoute.dart';
import 'package:flutter_app01/Animation/HeroAnimationRoute.dart';
import 'package:flutter_app01/Animation/ScaleAnimationRoute.dart';
import 'package:flutter_app01/Animation/StaggerAnimation.dart';

class AnimationTab extends StatefulWidget {
  @override
  _AnimationTabState createState() => _AnimationTabState();
}

class _AnimationTabState extends State<AnimationTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AnimationTab"),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("go to ScaleAnimationRoute"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ScaleAnimationRoute();
              }));
            },
          ),
          RaisedButton(
            child: Text("go to ScaleAnimationRoute1"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return ScaleAnimationRoute1();
                  }));
            },
          ),
          RaisedButton(
            child: Text("go to HeroAnimationRoute"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return HeroAnimationRoute();
                  }));
            },
          ),
          RaisedButton(
            child: Text("go to StaggerRoute"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return StaggerRoute();
                  }));
            },
          ),
          RaisedButton(
            child: Text("go to AnimatedSwitcherCounterRoute"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return AnimatedSwitcherCounterRoute();
                  }));
            },
          ),
        ],
      ),
    );
  }
}
