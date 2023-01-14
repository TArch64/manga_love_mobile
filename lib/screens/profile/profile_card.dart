import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, this.title, required this.content, this.onTap});

  final String? title;
  final Widget content;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    var card = Card(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null) Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Text(title!, style: const TextStyle(
                color: Color(0xFF808080),
                fontSize: 12,
                height: 1.33
              )),
            ),
            content,
          ],
        ),
      ),
    );
    return onTap == null ? card : GestureDetector(onTap: onTap, child: card);
  }
}