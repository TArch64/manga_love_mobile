import 'package:flutter/material.dart';

import 'api/current_user.graphql.dart';
import 'username/username_card.dart';
import 'email/email_card.dart';

class ProfilePersonalInformation extends StatelessWidget {
  const ProfilePersonalInformation({super.key, required this.user});

  final Query$CurrentUser$currentUser user;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: const Text('Personal Information', style: TextStyle(
            color: Color(0xFF909191),
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 1.4
          )),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          child: UsernameCard(user: user),
        ),
        EmailCard(user: user)
      ],
    );
  }
}