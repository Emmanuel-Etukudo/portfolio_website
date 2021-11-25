import 'package:flutter/material.dart';
import 'package:portfolio_website/routing/route_names.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children:  [
              NavBarItem('Portfolio', homeRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About', aboutRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Projects', homeRoute),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Blog', homeRoute)
            ],
          )
        ],
      ),
    );
  }
}
