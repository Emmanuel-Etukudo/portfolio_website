import 'dart:html';

import 'package:flutter/material.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          Text('Coming Soon'),
          SizedBox(
            width: 80,
          ),
          Icon(Icons.timer)
        ],
      ),
    );
  }
}
