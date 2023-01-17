import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AvatarSourceMenu extends StatelessWidget {
  const AvatarSourceMenu({
    super.key,
    required this.child,
    required this.onSelected
  });

  final Widget child;
  final PopupMenuItemSelected<ImageSource> onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ImageSource>(
      onSelected: onSelected,
      position: PopupMenuPosition.under,
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem(
          value: ImageSource.gallery,
          child: Text('Gallery')
        ),
        const PopupMenuItem(
          value: ImageSource.camera,
          child: Text('Camera')
        ),
      ],
      child: child,
    );
  }
}
