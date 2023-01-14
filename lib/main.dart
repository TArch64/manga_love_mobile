import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:manga_love_mobile/screens/sign-up/sign_up_screen.dart';
import 'package:provider/provider.dart';
import 'package:manga_love_mobile/app_theme_colors.dart';
import 'package:manga_love_mobile/env.dart';
import 'package:manga_love_mobile/screens/library/library_screen.dart';
import 'package:manga_love_mobile/navigator/navigator_route.dart';
import 'package:manga_love_mobile/navigator/navigator_router.dart';
import 'package:manga_love_mobile/state/auth_model.dart';
import 'package:manga_love_mobile/screens/profile/profile_screen.dart';
import 'package:manga_love_mobile/screens/sign-in/sign_in_screen.dart';
import 'package:manga_love_mobile/screens/works/works_screen.dart';

void main() async {
  await initHiveForFlutter();

  runApp(MyApp(
    graphQL: ValueNotifier(
      GraphQLClient(
        link: HttpLink(Env.apiEndpoint).concat(AuthLink(
            getToken: () => '' //UserPreferences.instance.authToken
        )),
        cache: GraphQLCache(store: HiveStore()),
      ),
    ),
    authModel: await AuthModel.init(),
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
