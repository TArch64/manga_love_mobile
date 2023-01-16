import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:manga_love_mobile/common/graphql_utils.dart';

import '../api/update_avatar.graphql.dart';
import '../api/current_user.graphql.dart';

class AvatarView extends StatelessWidget {
  AvatarView({
    super.key,
    required this.user,
  });

  final Query$CurrentUser$currentUser user;
  final picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return Mutation$UpdateAvatar$Widget(builder: (runMutation, _) {
      return GestureDetector(
        onTap: () async {
          final file = await picker.pickImage(source: ImageSource.gallery);

          if (file != null) await _updateAvatar(context, runMutation, file);
        },
        child: Image.network(user.avatar.url, width: 80, height: 80, fit: BoxFit.cover),
      );
    });
  }

  Future<void> _updateAvatar(BuildContext context, RunMutation$Mutation$UpdateAvatar runMutation, XFile avatar) async {
    final mutation = runMutation(Variables$Mutation$UpdateAvatar(
        avatar: await GraphQLUtils.xFileToMultipart(avatar)
    ));
    final result = await mutation.networkResult!;
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
