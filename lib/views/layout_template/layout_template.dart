import 'package:flutter/material.dart';
import 'package:portfolio_website/locator.dart';
import 'package:portfolio_website/routing/route_names.dart';
import 'package:portfolio_website/routing/router.dart';
import 'package:portfolio_website/services/navigation_service.dart';
import 'package:portfolio_website/widgets/centered_view/centered_view.dart';
import 'package:portfolio_website/widgets/nav_drawer/nav_drawer.dart';
import 'package:portfolio_website/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: Navigator(
                  //should be in view model next time
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute,
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
