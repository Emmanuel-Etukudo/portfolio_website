import 'package:flutter/material.dart';
import 'package:portfolio_website/views/home/home_content_desktop.dart';
import 'package:portfolio_website/views/home/home_content_mobile.dart';
import 'package:portfolio_website/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio_website/widgets/centered_view/centered_view.dart';
import 'package:portfolio_website/widgets/details/details.dart';
import 'package:portfolio_website/widgets/nav_drawer/nav_drawer.dart';
import 'package:portfolio_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ?NavigationDrawer()
              : null,
          backgroundColor: Colors.white,
          body: CenteredView(
            child: Column(
              children:  [
                const NavigationBar(),
               Expanded(child: ScreenTypeLayout(
                 mobile: HomeContentMobile(),
                 desktop: HomeContentDesktop(),
               ))
              ],
            ),
          ),
        );
      }
    );
  }
}
