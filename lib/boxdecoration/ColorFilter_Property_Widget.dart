//ColorFilter Property
import 'package:flutter/material.dart';

class ColorFilter_Property_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.white,
        color: Colors.amber,

        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/timg.jpeg"),
                    matchTextDirection: false,
                  )
              ),
            )
        ),

        // child: Container(
        //   decoration: BoxDecoration(
        //
        //     image: DecorationImage(
        //         image:AssetImage("assets/images/timg.jpeg"),
        //         colorFilter: ColorFilter.mode(Colors.red.withOpacity(0.5), BlendMode.srcOver),
        //         fit:BoxFit.contain,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}