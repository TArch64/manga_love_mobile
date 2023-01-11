import 'package:flutter/material.dart';

abstract class NavigatorRoute {
  NavigatorRoute({
    required this.path,
    required this.widget,
  });

  final String path;
  final WidgetBuilder widget;

  Widget transition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child);
}

class MainNavigatorRoute extends NavigatorRoute {
  MainNavigatorRoute({
    required super.path,
    required super.widget,
    this.isInitial = false,
  });

  final bool isInitial;

  @override
  Widget transition(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}