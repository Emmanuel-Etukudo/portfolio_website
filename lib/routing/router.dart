import 'package:flutter/material.dart';
import 'package:portfolio_website/routing/route_names.dart';
import 'package:portfolio_website/views/about/about_view.dart';
import 'package:portfolio_website/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  print('generateRoute: ${settings.name}');
  switch(settings.name){
    case homeRoute:
      return _getPageRoute(HomeView());
    case aboutRoute:
      return _getPageRoute(AboutView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child){
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder{
  final Widget child;
  _FadeRoute({required this.child})
      :super(
    pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
    ) =>
        child,
    transitionsBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
    ) =>
        FadeTransition(opacity: animation,
        child: child,)
  );
}