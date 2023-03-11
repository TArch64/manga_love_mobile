import 'package:envied/envied.dart';

import 'app_env.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'APP_HOST')
  static const appHost = _Env.appHost;

  @EnviedField(varName: 'APP_ENV')
  static const _appEnv = _Env._appEnv; // Envied doesn't support enums
  static final appEnv = AppEnv.fromStringOrThrow(_appEnv);

  static String get _apiPrefix => appEnv.isProduction ? '' : appEnv.name;
  static String get apiEndpoint => 'https://$_apiPrefix.$appHost/graphql';
}
