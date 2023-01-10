import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/auth/layout.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AuthLayout(
      body: Text('sign in')
    );
  }
}
