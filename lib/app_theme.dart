import 'package:flutter/material.dart';

import 'app_theme_colors.dart';

class AppTheme {
  static ThemeData build() => AppTheme()._build();

  ThemeData _build() => ThemeData(
    primarySwatch: AppThemeColors.primary,
    fontFamily: 'Nunito Sans',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: _buildButtonStyle(elevation: 7)
    ),
    textButtonTheme: TextButtonThemeData(
      style: _buildButtonStyle(),
    ),
    cardTheme: const CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      elevation: 1,
      margin: EdgeInsets.zero
    ),
  );

  ButtonStyle _buildButtonStyle({ double? elevation }) {
    return ButtonStyle(
      padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      )),
      textStyle: MaterialStateProperty.all(const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.333
      )),
      elevation: elevation == null ? null : MaterialStateProperty.all(elevation),
    );
  }
}