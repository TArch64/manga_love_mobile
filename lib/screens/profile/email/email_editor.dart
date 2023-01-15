import 'package:flutter/material.dart';

import '../../../layouts/bottom_sheet_layout.dart';
import '../../../common/form/field_validator.dart';
import '../../../common/form/outlined_input_decoration.dart';

class EmailEditor extends StatefulWidget {
  const EmailEditor({
    super.key,
    required this.email,
    required this.onSubmit,
    required this.onCancel,
  });

  final String email;
  final void Function(String email) onSubmit;
  final VoidCallback onCancel;

  @override
  State<StatefulWidget> createState() => _EmailEditorState(email: email);
}

class _EmailEditorState extends State<EmailEditor> {
  _EmailEditorState({ required String email }):
        _emailController = TextEditingController(text: email);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return BottomSheetLayout(
      title: 'Edit Email',
      onSave: () => widget.onSubmit(_emailController.value.text),
      onCancel: widget.onCancel,
      body: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 30),
              child: TextFormField(
                decoration: OutlinedInputDecoration(hintText: 'email'),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: FieldValidator.email(),
                controller: _emailController,
                autocorrect: false,
                autofocus: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}