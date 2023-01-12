import 'package:flutter/material.dart';
import 'package:manga_love_mobile/layouts/default/layout.dart';
import 'package:manga_love_mobile/screens/works/graphql/work_categories.graphql.dart';

class WorksScreen extends StatelessWidget {
  const WorksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      body: Query_WorkCategories_Widget(builder: (result, {fetchMore, refetch}) {
        var categories = result.parsedData?.workCategories;
        String text = categories?.map((e) => e.textEn).take(10).join(', ') ?? '';
        return Text(text);
      }),
    );
  }
}
