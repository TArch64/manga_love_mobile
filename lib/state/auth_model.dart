import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AuthModel extends ChangeNotifier {
  static const _recordKey = 'auth-token';

  static Future<AuthModel> init() async {
    return AuthModel(await Hive.openBox('user-preferences'));
  }

  AuthModel(this.store);

  final Box store;

  String get authToken {
    return store.get(_recordKey, defaultValue: '');
  }

  Future<void> signIn(String value) async {
    await store.put(_recordKey, value);
    notifyListeners();
  }

  Future<void> signOut() async {
    await store.delete(_recordKey);
  }

  bool get isSignedIn {
    return store.containsKey(_recordKey);
  }
}
