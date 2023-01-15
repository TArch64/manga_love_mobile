import 'package:flutter/material.dart';

import 'api/current_user.graphql.dart';
import 'profile_card.dart';

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({super.key, required this.user});

  final Query$CurrentUser$currentUser user;

  @override
  Widget build(BuildContext context) {
    return ProfileCard(
      title: 'Email',
      content: Text(user.email, style: const TextStyle(
        fontWeight: FontWeight.w600,
        height: 1.42
      ))
    );
  }
}