import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manga_love_mobile/common/shapes/line-shape.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildDivider(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: SvgPicture.asset('assets/icons/logo.svg', height: 70, width: 70),
        ),
        _buildDivider(),
      ],
    );
  }

  Widget _buildDivider() {
    return Expanded(
      flex: 1,
      child: LineShape(
        color: const Color(0xFFBDBDBD),
      ),
    );
  }
}
