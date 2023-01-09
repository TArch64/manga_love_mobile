import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:manga_love_mobile/app-theme-colors.dart';
import 'package:manga_love_mobile/env.dart';
import 'package:manga_love_mobile/works/works-page.dart';

void main() async {
  await initHiveForFlutter();

  runApp(MyApp(
      graphQL: ValueNotifier(
        GraphQLClient(
          link: HttpLink(Env.apiEndpoint).concat(AuthLink(getToken: () => '')),
          cache: GraphQLCache(store: HiveStore()),
        ),
      )
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.graphQL});

  final ValueNotifier<GraphQLClient> graphQL;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphQL,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: AppThemeColors.primary,
        ),
        home: const WorksPage(),
      ),
    );
  }
}
