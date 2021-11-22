import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/nav_drawer/drawer_item.dart';
import 'package:portfolio_website/widgets/nav_drawer/nav_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16
          )
        ]
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem('Portfolio', Icons.portrait),
          DrawerItem('About', Icons.info_rounded),
          DrawerItem('Projects', Icons.stacked_line_chart),
          DrawerItem('Blog', Icons.book),
        ],
      ),
    );
  }
}
