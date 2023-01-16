import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
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
  final cropper = ImageCropper();

  @override
  Widget build(BuildContext context) {
    return Mutation$UpdateAvatar$Widget(builder: (runMutation, _) {
      return GestureDetector(
        onTap: () async {
          final file = await picker.pickImage(source: ImageSource.gallery);

          if (file != null) {
            final cropped = await _cropAvatar(file);
            await _updateAvatar(context, runMutation, cropped);
          }
        },
        child: Image.network(user.avatar.url, width: 80, height: 80, fit: BoxFit.cover),
      );
    });
  }

  Future<XFile> _cropAvatar(XFile file) async {
    final cropped = await cropper.cropImage(
      sourcePath: file.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      aspectRatioPresets: [],
      uiSettings: [
        AndroidUiSettings(),
        IOSUiSettings(
          aspectRatioLockEnabled: true,
          aspectRatioPickerButtonHidden: true,
        ),
      ],
    );
    return XFile.fromData(await cropped!.readAsBytes(),
      path: file.path,
      name: file.name,
      lastModified: DateTime.now(),
    );
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
