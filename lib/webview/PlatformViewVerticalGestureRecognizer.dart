
import 'package:flutter/gestures.dart';

class PlatformViewVerticalGestureRecognizer
    extends VerticalDragGestureRecognizer {

  PlatformViewVerticalGestureRecognizer({PointerDeviceKind kind})

      : super(kind: kind);

  Offset _dragDistance = Offset.zero;

  @override
  void addPointer(PointerEvent event) {
    startTrackingPointer(event.pointer);
    print("PlatformViewVerticalGestureRecognizer addPointer event.pointer = ${event.pointer}");
  }

  @override
  void handleEvent(PointerEvent event) {
    _dragDistance = _dragDistance + event.delta;
    if (event is PointerMoveEvent) {
      final double dy = _dragDistance.dy.abs();
      final double dx = _dragDistance.dx.abs();
      print("PlatformViewVerticalGestureRecognizer handleEvent dy = ${dy}   dx =  ${dx}");
      if (dy > dx && dy > kTouchSlop) {
        // vertical drag - accept
        resolve(GestureDisposition.accepted);
        _dragDistance = Offset.zero;
      } else if (dx > kTouchSlop && dx > dy) {
        // horizontal drag - stop tracking
        stopTrackingPointer(event.pointer);
        _dragDistance = Offset.zero;
      }
    }
    print("PlatformViewVerticalGestureRecognizer handleEvent _dragDistance = ${_dragDistance}    ");
  }

  @override
  String get debugDescription => 'horizontal drag (platform view)';

  @override
  void didStopTrackingLastPointer(int pointer) {
    print("PlatformViewVerticalGestureRecognizer didStopTrackingLastPointer pointer = ${pointer}");
  }
}
