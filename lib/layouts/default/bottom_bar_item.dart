import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.route,
    required this.inactive,
    required this.active,
  });

  final IconData inactive;
  final IconData active;
  final String route;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => _onPressed(context),
        icon: _icon(context)
    );
  }

  Widget _icon(BuildContext context) {
    if (_isActive(context)) {
      return Icon(active, color: const Color(0xFF262626));
    }
    return Icon(inactive, color: const Color(0xFF999999));
  }

  bool _isActive(BuildContext context) {
    return GoRouter.of(context).location == route;
  }

  void _onPressed(BuildContext context) {
    if (!_isActive(context)) context.go(route);
  }
}
