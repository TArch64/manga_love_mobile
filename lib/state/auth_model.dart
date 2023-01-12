import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AuthModel extends ChangeNotifier {
  static Future<AuthModel> init() async {
    return AuthModel(await Hive.openBox('user-preferences'));
  }

  AuthModel(this.store);

  final Box store;

  String get authToken {
    return store.get('auth-token', defaultValue: '');
  }

  Future<void> setAuthToken(String value) async {
    await store.put('auth-token', value);
    notifyListeners();
  }

  bool get isSignedIn {
    return store.containsKey('auth-token');
  }
}
