import 'package:flutter/material.dart';
import 'package:manga_love_mobile/common/text/heading.dart';
import 'package:manga_love_mobile/layouts/default/bottom_bar.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    super.key,
    required this.body,
    this.title,
    this.toolbarRightAction,
  });

  final Widget body;
  final String? title;
  final Widget? toolbarRightAction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: _toolbarHeight,
        title: _titleWidget,
        actions: _toolbarActions,
      ),
      body: body,
      bottomNavigationBar: const BottomBar()
    );
  }

  Widget? get _titleWidget {
    if (title == null) return null;

    return Heading(title!, style: const TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
      height: 1.25
    ));
  }

  bool get _anyToolbarContent {
    return title != null || toolbarRightAction != null;
  }

  double get _toolbarHeight {
    return _anyToolbarContent ? 44 : 0;
  }

  List<Widget>? get _toolbarActions {
    return toolbarRightAction == null ? null : [toolbarRightAction!];
  }
}