import 'package:flutter/material.dart';

import '../../layouts/default/layout.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(body: Text('library'));
  }
}
