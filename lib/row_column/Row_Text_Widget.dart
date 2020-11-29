//row和Column
import 'package:flutter/material.dart';

class CrossAxisAlignment_start_Propery_Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //child: Row(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        textBaseline:TextBaseline.ideographic,
        children: <Widget>[
          Container(
            color: Colors.blue,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.pink),
          Icon(Icons.adjust, size: 50.0, color: Colors.purple),
          Icon(Icons.adjust, size: 50.0, color: Colors.greenAccent),
          Container(
            color: Colors.orange,
            height: 50.0,
            width: 50.0,
          ),
          Icon(Icons.adjust, size: 50.0, color: Colors.cyan),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline:TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                "Flutter",
                style: TextStyle(color: Colors.yellow, fontSize: 30.0),
              ),
              Text(
                "Flutter",
                style: TextStyle(color: Colors.blue, fontSize: 20.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
