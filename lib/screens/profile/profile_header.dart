import 'package:flutter/material.dart';

import 'api/current_user.graphql.dart';
import 'avatar/avatar_view.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.user});

  final Query$CurrentUser$currentUser user;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: AvatarView(user: user),
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(user.username, style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                height: 1.4
              )),
              Text(user.email, style: const TextStyle(
                color: Color(0xFF808080)
              )),
            ],
          ),
        ),
      ],
    );
  }
}