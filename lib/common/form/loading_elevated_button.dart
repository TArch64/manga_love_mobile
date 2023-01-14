import 'package:flutter/material.dart';

class LoadingElevatedButton extends StatefulWidget {
  const LoadingElevatedButton({
    super.key,
    required this.onPressed,
    required this.child
  });

  final Future<void> Function() onPressed;
  final Widget child;

  @override
  State<LoadingElevatedButton> createState() => _LoadingElevatedButtonState();
}

class _LoadingElevatedButtonState extends State<LoadingElevatedButton> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          setState(() => _loading = true);
          await widget.onPressed();
          setState(() => _loading = false);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_loading) Container(
              margin: const EdgeInsets.only(right: 10),
              child: const CircularProgressIndicator.adaptive(backgroundColor: Color(0xFFFFFFFF)),
            ),
            widget.child,
          ],
        ),
    );
  }
}
