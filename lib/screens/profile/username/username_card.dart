import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../../../common/graphql_utils.dart';
import '../api/current_user.graphql.dart';
import '../api/update_username.graphql.dart';
import '../profile_card.dart';
import 'username_editor.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard({
    super.key,
    required this.user,
  });

  final Query$CurrentUser$currentUser user;

  @override
  Widget build(BuildContext context) {
    return Mutation$UpdateUsername$Widget(builder: (runMutation, _) {
      return ProfileCard(
        title: 'Name',
        content: Text(user.username, style: const TextStyle(
          fontWeight: FontWeight.w600,
          height: 1.42
        )),
        onTap: () async {
          var username = await _editUsername(context);

          if (username != null && username != user.username) {
            _updateUsername(context, username, runMutation);
          }
        },
      );
    });
  }

  Future<String?> _editUsername(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => SizedBox(
        height: 300,
        child: UsernameEditor(
          initialUsername: user.username,
          onSubmit: (String username) => Navigator.pop(context, username),
          onCancel: () => Navigator.pop(context, null),
        ),
      ),
    );
  }

  void _updateUsername(BuildContext context, String username, RunMutation$Mutation$UpdateUsername runMutation) async {
    var variables = Variables$Mutation$UpdateUsername(username: username);
    var mutation = runMutation(variables, optimisticResult: {
      'currentUserUpdate': {
        '__typename': user.$__typename,
        'id': user.id,
        'username': username
      }
    });
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
      return 'This email already used';
    }
    if (code == 'auth-username-used') {
      return 'This username already taken';
    }
    return 'Something went wrong';
  }
}