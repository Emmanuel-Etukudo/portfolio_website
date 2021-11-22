import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio_website/widgets/details/details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Details(),
        Expanded(child: Center(
          child: CallToAction('Hire me'),
        ))
      ],
    );
  }
}
