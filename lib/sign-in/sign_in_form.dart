import 'package:flutter/material.dart';
import 'package:manga_love_mobile/common/form/field_validator.dart';
import 'package:manga_love_mobile/common/form/outlined_input_decoration.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        children: [
          TextFormField(
            decoration: OutlinedInputDecoration(hintText: 'e-mail'),
            validator: FieldValidator.email,
          ),
        ],
      ),
    );
  }
}