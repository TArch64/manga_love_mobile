import 'package:manga_love_mobile/preferences/preferences.dart';

class UserPreferences extends Preferences {
  static var instance = UserPreferences();

  @override
  String get scope => 'user-preferences';

  String get authToken {
    return store.get('auth-token', defaultValue: '');
  }

  bool get isSignedIn {
    return store.containsKey('auth-token');
  }
}
