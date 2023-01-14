import 'package:flutter/material.dart';

import 'profile_card.dart';

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return ProfileCard(
      title: 'Email',
      content: Text(email, style: const TextStyle(
        fontWeight: FontWeight.w600,
        height: 1.42
      ))
    );
  }
}