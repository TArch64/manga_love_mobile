import 'package:flutter/material.dart';

import '../../layouts/default/layout.dart';
import 'api/work_categories.graphql.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Query$WorkCategories$Widget(builder: (result, {fetchMore, refetch}) {
        var categories = result.parsedData?.workCategories;
        String text = categories?.map((e) => e.textEn).take(10).join(', ') ?? '';
        return Text(text);
      }),
    );
  }
}
