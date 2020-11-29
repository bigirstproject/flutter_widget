import 'package:flutter/material.dart';

class Constraints_Property extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Color.fromARGB(255, 66, 165, 245),
        alignment: Alignment(0, 0),
        child: Container(
          color: Colors.green,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "data1",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  Flexible(
                    child: Text(
                      "data123data1data123data123a123data123data123a12323a123",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 15, color: Colors.blue),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "data123",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                  Flexible(
                      child: Text(
                    "data234",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ))
                ],
              ),
            ],
          ),

          constraints: BoxConstraints(
            maxHeight: 300,
            maxWidth: 300,
            minWidth: 100,
            minHeight: 100,
          ),
        ),
      ),
    );
  }
}
