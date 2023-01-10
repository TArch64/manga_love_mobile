import 'package:flutter/material.dart';

class Heading extends Text {
  Heading(super.data, {super.key, TextStyle? style}): super(
    style: (style ?? const TextStyle()).apply(fontFamily: 'Merriweather')
  );
}