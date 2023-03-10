import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'app_theme.dart';
import 'navigator/navigator_route.dart';
import 'navigator/navigator_router.dart';
import 'screens/verify_email/verify_email_screen.dart';
import 'screens/library/library_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign-in/sign_in_screen.dart';
import 'screens/sign-up/sign_up_screen.dart';
import 'screens/works/works_screen.dart';
import 'state/auth_model.dart';

class App extends StatelessWidget {
  App({
    super.key,
    required this.graphQL,
    required this.authModel,
  });

  final ValueNotifier<GraphQLClient> graphQL;
  final AuthModel authModel;
  late NavigatorRouter router = NavigatorRouter(routes: _routes);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphQL,
      child: ChangeNotifierProvider.value(
        value: authModel,
        child: MaterialApp(
          title: 'MangaLove',
          theme: AppTheme.build(),
          initialRoute: router.initialRoute,
          onGenerateRoute: router.onGenerateRoute,
        ),
      ),
    );
  }

  List<NavigatorRoute> get _routes {
    return [
      MainNavigatorRoute(
        path: '/works',
        widget: (context) => const WorksScreen(),
        isInitial: true,
      ),
      MainNavigatorRoute(
        path: '/library',
        widget: (context) => const LibraryScreen(),
      ),
      MainNavigatorRoute(
        path: '/profile',
        widget: (context) => const ProfileScreen(),
      ),
      MainNavigatorRoute(
        path: '/sign-in',
        widget: (context) => SignInScreen(),
      ),
      MainNavigatorRoute(
        path: '/sign-up',
        widget: (context) => SignUpScreen(),
      ),
      MainNavigatorRoute(
        path: '/verify-email',
        widget: (context) => const VerifyEmailScreen()
      ),
    ];
  }
}
