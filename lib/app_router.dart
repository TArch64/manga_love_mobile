import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uni_links/uni_links.dart';

import 'screens/library/library_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign-in/sign_in_screen.dart';
import 'screens/sign-up/sign_up_screen.dart';
import 'screens/verify_email/verify_email_screen.dart';
import 'screens/works/works_screen.dart';

class AppRouter {
  final List<GoRoute> _routes = [
    _route('/works', (context, state) => const WorksScreen()),
    _route('/library', (context, state) => const LibraryScreen()),
    _route('/profile', (context, state) => const ProfileScreen()),
    _route('/sign-in', (context, state) => SignInScreen()),
    _route('/sign-up', (context, state) => SignUpScreen()),
    _route('/verify-email', (context, state) => VerifyEmailScreen(state.queryParams)),
  ];

  static Future<AppRouter> init() async {
    return AppRouter(await getInitialLink() ?? '/works');
  }

  AppRouter(this._initialLocation);

  final String _initialLocation;
  late GoRouter router;
  late StreamSubscription<String?> _deepLinkStreamSub;

  attach() {
    router = GoRouter(
      initialLocation: _initialLocation,
      routes: _routes
    );

    _deepLinkStreamSub = linkStream.listen((String? location) {
      if (location != null) router.go(location);
    });
  }

  Future<void> detach() {
    return _deepLinkStreamSub.cancel();
  }

  static GoRoute _route(String path,  GoRouterWidgetBuilder builder) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: builder(context, state),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
            child: child,
          );
        }
      ),
    );
  }
}