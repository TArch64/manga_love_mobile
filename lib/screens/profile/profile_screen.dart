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
                child: _buildHeader(user),
              ),
              _buildPersonalInformation(user)
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

  Widget _buildPersonalInformation(Query$CurrentUser$currentUser user) {
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
        _buildUsername(user.username),
      ],
    );
  }

  Widget _buildUsername(String username) {
    return _buildCard(
      title: 'Name',
      content: Text(username, style: const TextStyle(
        fontWeight: FontWeight.w600,
        height: 1.42
      ))
    );
  }

  Widget _buildCard({
    String? title,
    required Widget content,
    VoidCallback? onTap
  }) {
    var card = Card(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null) Container(
              margin: const EdgeInsets.only(bottom: 5),
              child: Text(title, style: const TextStyle(
                color: Color(0xFF808080),
                fontSize: 12,
                height: 1.33
              )),
            ),
            content,
          ],
        ),
      ),
    );
    return onTap == null ? card : GestureDetector(onTap: onTap, child: card);
  }
}
