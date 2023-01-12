import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  const PasswordFormField({
    super.key,
    this.decoration,
    this.validator,
    this.autovalidateMode,
  });

  final InputDecoration? decoration;
  final FormFieldValidator<String>? validator;
  final AutovalidateMode? autovalidateMode;

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: widget.decoration?.copyWith(
        suffixIcon: IconButton(
          onPressed: _toggleObscureText,
          icon: _obscureIcon,
        )
      ),
      obscureText: obscureText,
      autocorrect: false,
      enableSuggestions: false,
      validator: widget.validator,
      autovalidateMode: widget.autovalidateMode,
    );
  }

  Icon get _obscureIcon {
    var icon = obscureText ? Icons.remove_red_eye_outlined : Icons.remove_red_eye_rounded;
    return Icon(icon, color: const Color(0xFF262626));
  }

  void _toggleObscureText() {
    setState(() => obscureText = !obscureText);
  }
}