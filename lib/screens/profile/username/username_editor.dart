import 'package:flutter/material.dart';

import '../../../layouts/bottom_sheet_layout.dart';
import '../../../common/form/field_validator.dart';
import '../../../common/form/outlined_input_decoration.dart';

class UsernameEditor extends StatefulWidget {
  const UsernameEditor({
    super.key,
    required this.initialUsername,
    required this.onSubmit,
    required this.onCancel,
  });

  final String initialUsername;
  final void Function(String username) onSubmit;
  final VoidCallback onCancel;

  @override
  State<StatefulWidget> createState() => _UsernameEditorState(username: initialUsername);
}

class _UsernameEditorState extends State<UsernameEditor> {
  _UsernameEditorState({ required String username }) {
    _usernameController = TextEditingController(text: username);
  }

  late TextEditingController _usernameController;

  @override
  Widget build(BuildContext context) {
    return BottomSheetLayout(
      title: 'Edit Name',
      onSave: () => widget.onSubmit(_usernameController.value.text),
      onCancel: widget.onCancel,
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30),
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
          ],
        )
      )
    );
  }
}