import 'package:flutter/material.dart';

import '../api/current_user.graphql.dart';
import '../profile_card.dart';

class PasswordCard extends StatelessWidget {
  const PasswordCard({
    super.key,
    required this.user,
  });

  final Query$CurrentUser$currentUser user;

  @override
  Widget build(BuildContext context) {
    return const ProfileCard(
      title: 'Password',
      content: Text('********', style: TextStyle(
        fontWeight: FontWeight.w600,
        height: 1.42
      )),
    );
  }
}
