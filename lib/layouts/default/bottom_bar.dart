import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/default/bottom_bar_item.dart';
import 'package:manga_love_mobile/state/auth_model.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    var viewPadding = MediaQuery.of(context).viewPadding;

    return Container(
      padding: EdgeInsets.only(bottom: viewPadding.bottom - 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(5, 0, 0, 0),
            offset: Offset(0, -2),
            blurRadius: 50,
            spreadRadius: 50
          ),
        ],
      ),
      child: Consumer<AuthModel>(builder: (context, authModel, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildMenu(authModel),
        );
      }),
    );
  }

  List<Widget> _buildMenu(AuthModel authModel) {
    return authModel.isSignedIn ? _buildSignedInNav() : _buildSignedOutNav();
  }

  List<Widget> _buildSignedInNav() {
    return [
      const BottomBarItem(
        route: '/works',
        inactive: Icons.home_outlined,
        active: Icons.home,
      ),
      _buildNavSpacing(),
      const BottomBarItem(
        route: '/library',
        inactive: Icons.bookmark_outline,
        active: Icons.bookmark,
      ),
      _buildNavSpacing(),
      const BottomBarItem(
        route: '/profile',
        inactive: Icons.person_outlined,
        active: Icons.person,
      ),
    ];
  }

  List<Widget> _buildSignedOutNav() {
    return [
      const BottomBarItem(
        route: '/works',
        inactive: Icons.home_outlined,
        active: Icons.home,
      ),
      _buildNavSpacing(),
      const BottomBarItem(
        route: '/sign-in',
        inactive: Icons.login_outlined,
        active: Icons.login,
      ),
    ];
  }

  Widget _buildNavSpacing() {
    return const SizedBox(width: 50);
  }
}