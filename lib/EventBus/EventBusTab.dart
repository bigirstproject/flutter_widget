import 'package:flutter/material.dart';
import 'package:flutter_app01/EventBus/EventBus.dart';
import 'package:flutter_app01/EventBus/EventBus.dart';

class EventBusTab extends StatefulWidget {
  @override
  _EventBusTabState createState() => _EventBusTabState();
}

class _EventBusTabState extends State<EventBusTab> {

  @override
  void initState() {
    super.initState();
    eventBus.on("login", eventCallback);
  }

  Future<void> eventCallback(dynamic arg) async => print("arg EventCallback ${arg}");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EventBusTab"),
      ),
      body: ListView(
        children: [
          RaisedButton(
            child: Text("go to EventBus"),
            onPressed: () async{
              eventBus.emit("login", "login " );
            },
          ),
        ],
      ),
    );
  }
}
