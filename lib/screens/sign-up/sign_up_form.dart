import 'package:flutter/material.dart';

import '../../common/form/field_validator.dart';
import '../../common/form/outlined_input_decoration.dart';
import '../../common/form/password_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<StatefulWidget> createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              decoration: OutlinedInputDecoration(hintText: 'e-mail'),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: FieldValidator.email(),
              controller: _emailController,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              decoration: OutlinedInputDecoration(hintText: 'username'),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: FieldValidator.compose([
                FieldValidator.minLength(3),
                FieldValidator.maxLength(255),
              ]),
              controller: _usernameController,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: PasswordFormField(
              decoration: OutlinedInputDecoration(hintText: 'password'),
              autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FieldValidator.compose([
                  FieldValidator.minLength(8),
                  FieldValidator.maxLength(255),
                ]),
              controller: _passwordController
            ),
          ),
          PasswordFormField(
            decoration: OutlinedInputDecoration(hintText: 'confirm password'),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: _validateConfirmPassword,
            controller: _confirmPasswordController
          ),
        ],
      ),
    );
  }

  String? _validateConfirmPassword(String? value) {
    bool isMatch = _passwordController.value.text == value;
    return isMatch ? null : 'Passwords should match';
  }

  String get email => _emailController.value.text;
  String get username => _usernameController.value.text;
  String get password => _passwordController.value.text;
  bool validate() => _formKey.currentState!.validate();
}
