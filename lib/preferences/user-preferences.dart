import 'package:hive/hive.dart';

class UserPreferences {
  static var instance = UserPreferences();
  late Box _box;

  Future<void> init() async {
    _box = await Hive.openBox('user-preferences');
  }

  String get authToken {
    return _box.get('auth-token', defaultValue: '');
  }

  bool get isSignedIn {
    return _box.containsKey('auth-token');
  }
}
