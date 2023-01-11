import 'package:flutter/material.dart';

class OutlinedInputDecoration extends InputDecoration {
  OutlinedInputDecoration({super.hintText}): super(
    border: _buildBorder(const Color(0xFFDBDBDB)),
    focusedBorder: _buildBorder(const Color(0xFF262626)),
    errorBorder: _buildBorder(const Color(0xFFAE2727)),
    focusedErrorBorder: _buildBorder(const Color(0xFFAE2727)),
  );

  static InputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
        width: 1,
      ),
    );
  }
}
