enum AppEnv {
  staging,
  production;

  static AppEnv? fromString(String string) {
    return AppEnv.values.firstWhere((value) => value.name == string);
  }

  static AppEnv fromStringOrThrow(String string) {
    AppEnv? value =  AppEnv.fromString(string);
    assert(value != null, 'Unknown app env');
    return value!;
  }

  bool get isProduction => this == AppEnv.production;
  bool get isString => this == AppEnv.staging;
}
