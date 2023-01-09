import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  DefaultLayout({super.key, required this.body});

  Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
    );
  }
}