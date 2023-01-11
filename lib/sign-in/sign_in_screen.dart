import 'package:flutter/material.dart';
import 'package:manga_love_mobile/common/text/heading.dart';
import 'package:manga_love_mobile/layouts/auth/layout.dart';
import 'package:manga_love_mobile/sign-in/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Heading('Hello!', style: const TextStyle(
            color: Color(0xFF909090),
            height: 1.666,
            fontSize: 30,
          )),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Heading('WELCOME BACK', style: const TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 3,
              height: 1.666,
              fontSize: 30,
            )),
          ),
          const SignInForm()
        ],
      )
    );
  }
}
