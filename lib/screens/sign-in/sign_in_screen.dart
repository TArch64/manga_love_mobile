import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../../common/form/loading_elevated_button.dart';
import '../../common/graphql_utils.dart';
import '../../common/text/heading.dart';
import '../../layouts/auth/layout.dart';
import '../../state/auth_model.dart';
import 'api/sign_in.graphql.dart';
import 'sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final _formKey = GlobalKey<SignInFormState>();

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Heading('Hello!', style: const TextStyle(
                  color: Color(0xFF909090),
                  height: 1.666,
                  fontSize: 30,
                )),
                Heading('WELCOME BACK', style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                  height: 1.666,
                  fontSize: 30,
                )),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 50),
            child: SignInForm(key: _formKey),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Mutation$SignIn$Widget(
              builder: (runMutation, _) {
                return Consumer<AuthModel>(builder: (context, authModel, child) {
                  return LoadingElevatedButton(
                    onPressed: () => _signIn(context, authModel, runMutation),
                    child: const Text('Sign in'),
                  );
                });
              }
            ),
          ),
          TextButton(
              onPressed: () => Navigator.pushReplacementNamed(context, '/sign-up'),
              child: const Text('SIGN UP')
          )
        ],
      )
    );
  }

  Future<void> _signIn(BuildContext context, AuthModel authModel, RunMutation$Mutation$SignIn runMutation) async {
    if (!_formKey.currentState!.validate()) return;

    var mutation = runMutation(Variables$Mutation$SignIn(
      username: _formKey.currentState!.username,
      password: _formKey.currentState!.password,
    ));
    var result = await mutation.networkResult!;

    if (result.hasException) {
      _displaySignInError(context, result);
      return;
    }

    var token = result.data?['authSignIn']['token'];
    _successSignIn(context, authModel, token);
  }

  void _displaySignInError(BuildContext context, QueryResult result) {
    for (final code in GraphQLUtils.getErrorCodes(result)) {
      var snackBar = SnackBar(content: Text(_getErrorMessage(code)));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  String _getErrorMessage(String code) {
    if (code == 'invalid-credentials') {
      return 'Invalid username or password';
    }
    return 'Something went wrong';
  }

  void _successSignIn(BuildContext context, AuthModel authModel, String token) async {
    await authModel.signIn(token);
    await Navigator.pushReplacementNamed(context, '/works');
  }
}
