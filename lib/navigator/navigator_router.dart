import 'package:flutter/material.dart';
import 'package:manga_love_mobile/navigator/navigator_route.dart';

class NavigatorRouter {
  NavigatorRouter({this.routes = const []});

  final List<NavigatorRoute> routes;

  List<MainNavigatorRoute> get _mainRoutes {
    return routes.whereType<MainNavigatorRoute>().toList();
  }

  String get initialRoute {
    return _mainRoutes.firstWhere((route) => route.isInitial).path;
  }

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    if (!_existsByPath(settings.name)) return null;

    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 150),
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) {
        return _forSettings(settings).widget(context);
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return _forSettings(settings).transition(context, animation, secondaryAnimation, child);
      },
    );
  }

  bool _existsByPath(String? path) {
    return routes.any((route) => route.path == path);
  }

  NavigatorRoute _forSettings(RouteSettings settings) {
    return _findByPath(settings.name!)!;
  }

  NavigatorRoute? _findByPath(String path) {
    return routes.firstWhere((route) => route.path == path);
  }
}
