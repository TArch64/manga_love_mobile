import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'app.dart';
import 'app_router.dart';
import 'env/index.dart';
import 'state/auth_model.dart';

void main() async {
  await initHiveForFlutter();
  final authModel = await AuthModel.init();

  runApp(App(
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
    appRouter: await AppRouter.init(),
  ));
}
