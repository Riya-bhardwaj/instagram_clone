import 'package:flutter/material.dart';
import './instalist.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: Instalist(),)


    ],

    );

  }
}
