import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

abstract class Preferences {
  @protected
  late Box store;

  @protected
  String get scope;

  Future<void> init() async {
    store = await Hive.openBox(scope);
  }
}
