// import 'dart:developer';
// import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

class TestingRandom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // color: Colors.lightBlueAccent,
        child: Text(
          'your lucky number is : ' + Random().nextInt(100).toString(),
          style: TextStyle(
            // fontFamily: DomException.ABORT,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // // // their is no needs for using this functions,
  // // // but i kept it, to renember me that how to
  // // // minimize my code
  // String genrateyourluckynumber() {
  //   var random = Random().nextInt(30);
  //   // return random.nextInt(1000);
  //   return random.toString();
  // }
}
