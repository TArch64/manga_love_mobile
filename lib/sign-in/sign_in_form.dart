import 'package:flutter/material.dart';
import 'package:manga_love_mobile/common/form/field_validator.dart';
import 'package:manga_love_mobile/common/form/outlined_input_decoration.dart';
import 'package:manga_love_mobile/common/form/password_form_field.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => SignInFormState();
}

class SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              decoration: OutlinedInputDecoration(hintText: 'username'),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: FieldValidator.required(),
              controller: _usernameController,
            ),
          ),
          PasswordFormField(
            decoration: OutlinedInputDecoration(hintText: 'password'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: FieldValidator.required(),
            controller: _passwordController
          ),
        ],
      ),
    );
  }

  String get username => _usernameController.value.text;
  String get password => _passwordController.value.text;
  bool validate() => _formKey.currentState!.validate();
}