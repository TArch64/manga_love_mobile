import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/auth/layout.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context)!.settings.arguments);

    return const AuthLayout(
      body: Text('verify email')
    );
  }
}
