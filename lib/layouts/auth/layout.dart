import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/auth/header.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({
    super.key,
    required this.body,
    this.includeHeader = true,
  });

  final Widget body;
  final bool includeHeader;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (includeHeader) Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: const AuthHeader(),
            ),
            body,
          ],
        ),
      ),
    );
  }
}