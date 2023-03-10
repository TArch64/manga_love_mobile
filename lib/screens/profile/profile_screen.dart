import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../../layouts/default/layout.dart';
import '../../state/auth_model.dart';
import 'password/password_card.dart';
import 'api/current_user.graphql.dart';
import 'profile_header.dart';
import 'profile_section_title.dart';
import 'username/username_card.dart';
import 'email/email_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Profile',
      toolbarRightAction: _logoutAction,
      body: Query$CurrentUser$Widget(builder: (result, {fetchMore, refetch}) {
        var user = result.parsedData?.currentUser;
        if (user == null) return Container();

        return Container(
          padding: const EdgeInsets.only(
            top: 42,
            left: 20,
            right: 20,
            bottom: 30
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: ProfileHeader(user: user),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: const ProfileSectionTitle(text: 'Personal Information'),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: UsernameCard(user: user),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 40),
                child:  EmailCard(user: user),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: const ProfileSectionTitle(text: 'Password'),
              ),
              PasswordCard(user: user),
            ],
          ),
        );
      }),
    );
  }

  Widget get _logoutAction {
    return Consumer<AuthModel>(builder: (context, authModel, child) {
      return GraphQLConsumer(builder: (GraphQLClient client) {
        return IconButton(
          onPressed: () async {
            await authModel.signOut();
            client.cache.store.reset();
            context.go('/works');
          },
          icon: const Icon(Icons.logout_outlined)
        );
      });
    });
  }
}
