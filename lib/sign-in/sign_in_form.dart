import 'package:flutter/material.dart';
import 'package:manga_love_mobile/common/form/field_validator.dart';
import 'package:manga_love_mobile/common/form/outlined_input_decoration.dart';
import 'package:manga_love_mobile/common/form/password_form_field.dart';

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
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              decoration: OutlinedInputDecoration(hintText: 'e-mail'),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: FieldValidator.email(),
            ),
          ),
          PasswordFormField(
            decoration: OutlinedInputDecoration(hintText: 'password'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: FieldValidator.required(),
          ),
        ],
      ),
    );
  }
}