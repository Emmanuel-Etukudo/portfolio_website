import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio_website/widgets/centered_view/centered_view.dart';
import 'package:portfolio_website/widgets/course_details/course_details.dart';
import 'package:portfolio_website/widgets/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children:  [
            const NavigationBar(),
           Expanded(child: Row(
             children: const [
               CourseDetails(),
               Expanded(child: Center(
                 child: CallToAction('Hire me'),
               ))
             ],
           ))
          ],
        ),
      ),
    );
  }
}
