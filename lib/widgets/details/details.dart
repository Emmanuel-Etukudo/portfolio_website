import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation){
      var textAlignment = sizingInformation.deviceScreenType == DeviceScreenType.desktop
          ?TextAlign.left
          :TextAlign.center;

      double titleSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ?50
          :80;

      double descriptionSize = sizingInformation.deviceScreenType == DeviceScreenType.mobile
          ?16
          :21;

      return Container(
        width: 600,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text("Hi \nI'm Emmanuel ",
                textAlign: textAlignment,
                style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: titleSize, height: 0.9)
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "I'm a flutter developer. I build and design beautiful mobile and desktop apps",
              textAlign: textAlignment,
              style: TextStyle(fontSize: descriptionSize, height: 1.7),
            )
          ],
        ),
      );
    });
  }
}
