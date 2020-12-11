import 'package:flutter/material.dart';

class PointerEventPage extends StatefulWidget {
  @override
  _PointerEventPageState createState() => _PointerEventPageState();
}

class _PointerEventPageState extends State<PointerEventPage> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Listener(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 300.0,
          height: 150.0,
          child: Text(_event?.toString() ?? "",
              style: TextStyle(color: Colors.white)),
        ),
        onPointerDown: (PointerDownEvent event) =>
            setState(() => _event = event),
        onPointerMove: (PointerMoveEvent event) =>
            setState(() => _event = event),
        onPointerUp: (PointerUpEvent event) => setState(() => _event = event),
      ),
    );
  }
}
