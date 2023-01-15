import 'package:flutter/material.dart';

import '../common/text/heading.dart';

class BottomSheetLayout extends StatelessWidget {
  const BottomSheetLayout({
    super.key,
    required this.body,
    required this.title,
    this.onSave,
    this.onCancel,
  });

  final Widget body;
  final String title;
  final VoidCallback? onSave;
  final VoidCallback? onCancel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: const BoxDecoration(
            border: BorderDirectional(
              bottom: BorderSide(
                width: 1,
                color: Color(0xFFDBDBDB)
              )
            )
          ),
          child: _header,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: body,
        ),
      ],
    );
  }

  Widget get _header {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Heading(title, style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
        )),
        const SizedBox(height: 48),
        const Spacer(),
        if (onCancel != null) IconButton(
          onPressed: onCancel,
          icon: const Icon(Icons.close),
        ),
        if (onSave != null) IconButton(
          onPressed: onSave,
          icon: const Icon(Icons.check),
        ),
      ],
    );
  }
}