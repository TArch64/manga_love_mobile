import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:manga_love_mobile/common/form/loading_elevated_button.dart';
import 'package:manga_love_mobile/common/graphql_utils.dart';
import 'package:manga_love_mobile/common/text/heading.dart';
import 'package:manga_love_mobile/layouts/auth/layout.dart';
import 'package:manga_love_mobile/screens/sign-up/graphql/sign_up.graphql.dart';
import 'package:manga_love_mobile/screens/sign-up/sign_up_form.dart';
import 'package:manga_love_mobile/state/auth_model.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formKey = GlobalKey<SignUpFormState>();

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: Heading('WELCOME', style: const TextStyle(
              fontWeight: FontWeight.w700,
              letterSpacing: 3,
              height: 1.666,
              fontSize: 30,
            )),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 26),
            child: SignUpForm(key: _formKey),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            child: Mutation$SignUp$Widget(
              builder: (runMutation, _) {
                return Consumer<AuthModel>(builder: (context, authModel, child) {
                  return LoadingElevatedButton(
                    onPressed: () => _signUp(context, authModel, runMutation),
                    child: const Text('Sign up'),
                  );
                });
              }
            ),
          ),
          TextButton(
            onPressed: () => Navigator.pushReplacementNamed(context, '/sign-in'),
            child: _buildSignInText(context),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInText(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context).textTheme.button,
        children: const [
          TextSpan(text: 'Already have account? ', style: TextStyle(
            color: Color(0xFF808080),
            fontWeight: FontWeight.w600
          )),
          TextSpan(text: 'SIGN IN', style: TextStyle(
            color: Color(0xFF262626),
            fontWeight: FontWeight.w700
          )),
        ],
      ),
    );
  }

  Future<void> _signUp(BuildContext context, AuthModel authModel, RunMutation$Mutation$SignUp runMutation) async {
    if (!_formKey.currentState!.validate()) return;

    var mutation = runMutation(Variables$Mutation$SignUp(
      email: _formKey.currentState!.email,
      username: _formKey.currentState!.username,
      password: _formKey.currentState!.password,
    ));
    var result = await mutation.networkResult!;

    if (result.hasException) {
      _displaySignUpError(context, result);
      return;
    }

    var token = result.data?['authSignUp']['token'];
    _successSignUp(context, authModel, token);
  }

  void _displaySignUpError(BuildContext context, QueryResult result) {
    for (final code in GraphQLUtils.getErrorCodes(result)) {
      var snackBar = SnackBar(content: Text(_getErrorMessage(code)));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  String _getErrorMessage(String code) {
    if (code == 'auth-email-used') {
      return 'This email already used';
    }
    if (code == 'auth-username-used') {
      return 'This username already taken';
    }
    return 'Something went wrong';
  }

  void _successSignUp(BuildContext context, AuthModel authModel, String token) async {
    await authModel.signIn(token);
    await Navigator.pushReplacementNamed(context, '/works');

    var snackBar = const SnackBar(content: Text('Verification email sent'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
