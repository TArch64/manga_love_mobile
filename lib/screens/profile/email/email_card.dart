import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../common/graphql_utils.dart';
import '../api/update_email.graphql.dart';
import '../api/current_user.graphql.dart';
import '../profile_card.dart';
import 'email_editor.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({
    super.key,
    required this.user,
  });

  final Query$CurrentUser$currentUser user;

  @override
  Widget build(BuildContext context) {
    return Mutation$UpdateEmail$Widget(builder: (runMutation, _) {
      return ProfileCard(
        title: 'Email',
        content: Text(user.email, style: const TextStyle(
          fontWeight: FontWeight.w600,
          height: 1.42
        )),
        onTap: () async {
          var email = await _editEmail(context);

          if (email != null && email != user.email) {
            _updateEmail(context, email, runMutation);
          }
        },
      );
    });
  }

  Future<String?> _editEmail(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SizedBox(
        height: 300,
        child: EmailEditor(
          email: user.email,
          onSubmit: (String email) => context.pop(email),
          onCancel: () => context.pop(null),
        ),
      ),
    );
  }

  void _updateEmail(BuildContext context, String email, RunMutation$Mutation$UpdateEmail runMutation) async {
    var variables = Variables$Mutation$UpdateEmail(email: email);
    var mutation = runMutation(variables, typedOptimisticResult: Mutation$UpdateEmail(
      currentUserUpdate: Mutation$UpdateEmail$currentUserUpdate(
        id: user.id,
        email: email
      )
    ));
    var result = await mutation.networkResult!;
    if (result.hasException) _displayUpdateError(context, result);
  }

  void _displayUpdateError(BuildContext context, QueryResult result) {
    for (final code in GraphQLUtils.getErrorCodes(result)) {
      var snackBar = SnackBar(content: Text(_getErrorMessage(code)));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  String _getErrorMessage(String code) {
    if (code == 'auth-email-used') {
      return 'This e-mail already taken';
    }
    return 'Something went wrong';
  }
}