import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static const String _authTokenKey = 'user:auth-token';

  static UserPreferences? _instance;
  static UserPreferences get instance {
    _instance ??= UserPreferences();
    return _instance!;
  }

  bool isSignedIn = false;

  Future<String> fetchAuthToken() async {
    var preferences = await SharedPreferences.getInstance();
    var token = preferences.getString(_authTokenKey) ?? '';
    isSignedIn = token.isNotEmpty;
    return token;
  }
}
