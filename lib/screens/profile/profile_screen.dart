import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../layouts/default/layout.dart';
import '../../state/auth_model.dart';
import 'api/current_user.graphql.dart';
import 'profile_header.dart';
import 'profile_personal_information.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Profile',
      toolbarRightAction: _logoutAction,
      body: Query$CurrentUser$Widget(builder: (result, {fetchMore, refetch}) {
        var user = result.parsedData!.currentUser;

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
              ProfilePersonalInformation(user: user),
            ],
          ),
        );
      }),
    );
  }

  Widget get _logoutAction {
    return Consumer<AuthModel>(builder: (context, authModel, child) {
      return IconButton(
          onPressed: () async {
            await authModel.signOut();
            await Navigator.pushReplacementNamed(context, '/works');
          },
          icon: const Icon(Icons.logout_outlined)
      );
    });
  }
}
