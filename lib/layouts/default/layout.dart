import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/default/bottom-bar.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: body,
      bottomNavigationBar: const BottomBar()
    );
  }
}