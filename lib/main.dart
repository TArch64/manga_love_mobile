import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:manga_love_mobile/app-theme-colors.dart';
import 'package:manga_love_mobile/env.dart';
import 'package:manga_love_mobile/library/library-screen.dart';
import 'package:manga_love_mobile/navigator/navigator-route.dart';
import 'package:manga_love_mobile/navigator/navigator-routes.dart';
import 'package:manga_love_mobile/preferences/user-preferences.dart';
import 'package:manga_love_mobile/profile/profile-screen.dart';
import 'package:manga_love_mobile/sign-in/sign-in-screen.dart';
import 'package:manga_love_mobile/works/works-screen.dart';

void main() async {
  await initHiveForFlutter();
  await UserPreferences.instance.init();

  runApp(MyApp(
    graphQL: ValueNotifier(
      GraphQLClient(
        link: HttpLink(Env.apiEndpoint).concat(AuthLink(
            getToken: () => UserPreferences.instance.authToken
        )),
        cache: GraphQLCache(store: HiveStore()),
      ),
    ),
    routes: NavigatorRoutes([
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
        widget: (context) => const SignInScreen(),
      )
    ]),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.graphQL,
    required this.routes
  });

  final ValueNotifier<GraphQLClient> graphQL;
  final NavigatorRoutes routes;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphQL,
      child: MaterialApp(
        title: 'MangaLove',
        theme: ThemeData(
          primarySwatch: AppThemeColors.primary,
        ),
        initialRoute: routes.initialRoute,
        onGenerateRoute: routes.onGenerateRoute,
      ),
    );
  }
}
