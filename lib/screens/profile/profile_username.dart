import 'package:flutter/material.dart';

import 'profile_card.dart';

class ProfileUsername extends StatelessWidget {
  const ProfileUsername({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return ProfileCard(
      title: 'Name',
      content: Text(username, style: const TextStyle(
        fontWeight: FontWeight.w600,
        height: 1.42
      ))
    );
  }
}