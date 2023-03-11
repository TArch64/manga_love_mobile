import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import 'app_theme.dart';
import 'app_router.dart';
import 'state/auth_model.dart';

class App extends StatefulWidget {
  App({
    super.key,
    required this.graphQL,
    required this.authModel,
    required this.appRouter,
  });

  final ValueNotifier<GraphQLClient> graphQL;
  final AuthModel authModel;
  final AppRouter appRouter;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    widget.appRouter.attach();
  }

  @override
  void dispose() {
    super.dispose();
    widget.appRouter.detach();
  }

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: widget.graphQL,
      child: ChangeNotifierProvider.value(
        value: widget.authModel,
        child: MaterialApp.router(
          title: 'MangaLove',
          theme: AppTheme.build(),
          routerConfig: widget.appRouter.router,
        ),
      ),
    );
  }
}
