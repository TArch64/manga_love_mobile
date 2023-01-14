import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'screens/sign-up/sign_up_screen.dart';
import 'app_theme_colors.dart';
import 'env.dart';
import 'screens/library/library_screen.dart';
import 'navigator/navigator_route.dart';
import 'navigator/navigator_router.dart';
import 'screens/works/works_screen.dart';
import 'state/auth_model.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign-in/sign_in_screen.dart';

void main() async {
  await initHiveForFlutter();
  var authModel = await AuthModel.init();

  runApp(MyApp(
    graphQL: ValueNotifier(
      GraphQLClient(
        link: Link.from([
          AuthLink(getToken: () => authModel.authToken),
          HttpLink(Env.apiEndpoint),
        ]),
        cache: GraphQLCache(store: HiveStore()),
      ),
    ),
    authModel: authModel,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({
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
          theme: _theme,
          initialRoute: router.initialRoute,
          onGenerateRoute: router.onGenerateRoute,
        ),
      ),
    );
  }

  ThemeData get _theme => ThemeData(
    primarySwatch: AppThemeColors.primary,
    fontFamily: 'Nunito Sans',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: _buildButtonStyle(elevation: 7)
    ),
    textButtonTheme: TextButtonThemeData(
      style: _buildButtonStyle(),
    ),
    cardTheme: const CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      elevation: 1,
      margin: EdgeInsets.zero
    ),
  );

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
      )
    ];
  }

  ButtonStyle _buildButtonStyle({ double? elevation }) {
    return ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      )),
      textStyle: MaterialStateProperty.all(const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.333
      )),
      elevation: elevation == null ? null : MaterialStateProperty.all(elevation),
    );
  }
}
