import 'package:flutter/material.dart';

class ProfileSectionTitle extends StatelessWidget {
  const ProfileSectionTitle({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(
        color: Color(0xFF909191),
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.4
    ));
  }
}
