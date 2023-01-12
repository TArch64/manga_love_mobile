import 'package:flutter/material.dart';
import 'package:manga_love_mobile/common/text/heading.dart';
import 'package:manga_love_mobile/layouts/auth/layout.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Heading('WELCOME', style: const TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 3,
              height: 1.666,
              fontSize: 30,
            )),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/sign-in'),
            child: _buildSignInText(context),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInText(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.button,
        children: const [
          TextSpan(text: 'Already have account? ', style: TextStyle(
            color: Color(0xFF808080),
            fontWeight: FontWeight.w600
          )),
          TextSpan(text: 'SIGN IN', style: TextStyle(
            color: Color(0xFF262626),
            fontWeight: FontWeight.w700
          )),
        ],
      ),
    );
  }
}
