import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/default/layout.dart';
import 'package:manga_love_mobile/state/auth_model.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Profile',
      toolbarRightAction: _logoutAction,
      body: const Text('profile')
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
