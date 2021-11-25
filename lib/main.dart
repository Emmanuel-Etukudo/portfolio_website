import 'package:flutter/material.dart';
import 'package:portfolio_website/locator.dart';
import 'package:portfolio_website/views/home/home_view.dart';
import 'package:portfolio_website/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Source Code')),
        home: const LayoutTemplate());
  }
}
