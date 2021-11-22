import 'package:flutter/material.dart';

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
              NavBarItem('Portfolio'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Projects'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('Blog')
            ],
          )
        ],
      ),
    );
  }
}
