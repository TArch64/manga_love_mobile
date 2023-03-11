import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/auth/layout.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen(this.queryParams, {super.key});

  final Map<String, String> queryParams;

  String get _verificationCode => queryParams['code'] ?? '';

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      body: Text('verify email $_verificationCode')
    );
  }
}
