import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio_website/widgets/details/details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Details(),
        SizedBox(
          height: 100,
        ),
        CallToAction('Hire me'),
      ],
    );
  }
}
