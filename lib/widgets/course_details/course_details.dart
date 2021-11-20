import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("Hi \nI'm Emmanuel ",
          style: TextStyle(
            fontWeight: FontWeight.w800, fontSize: 80, height: 0.9)
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "I'm a flutter developer. I build and design beautiful mobile and desktop apps",
            style: TextStyle(fontSize: 21, height: 1.7),
          )
        ],
      ),
    );
  }
}
