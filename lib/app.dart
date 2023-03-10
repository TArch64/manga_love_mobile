import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'app_theme.dart';
import 'app_router.dart';
import 'state/auth_model.dart';

class App extends StatelessWidget {
  App({
    super.key,
    required this.graphQL,
    required this.authModel,
  });

  final ValueNotifier<GraphQLClient> graphQL;
  final AuthModel authModel;

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: graphQL,
      child: ChangeNotifierProvider.value(
        value: authModel,
        child: MaterialApp.router(
          title: 'MangaLove',
          theme: AppTheme.build(),
          routerConfig: AppRouter.build(),
        ),
      ),
    );
  }
}
