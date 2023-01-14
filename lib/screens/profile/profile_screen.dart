import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/default/layout.dart';
import 'package:manga_love_mobile/screens/profile/api/current-user.graphql.dart';
import 'package:manga_love_mobile/state/auth_model.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Profile',
      toolbarRightAction: _logoutAction,
      body: Query$CurrentUser$Widget(builder: (result, {fetchMore, refetch}) {
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
              _buildHeader(result.parsedData!.currentUser)
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

  Widget _buildHeader(Query$CurrentUser$currentUser user) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: _buildAvatar(user.avatar),
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

  Widget _buildAvatar(Query$CurrentUser$currentUser$avatar avatar) {
    return Image.network(avatar.url, width: 80, height: 80, fit: BoxFit.cover);
  }
}
