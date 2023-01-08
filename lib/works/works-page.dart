import 'package:flutter/material.dart';
import 'package:manga_love_mobile/works/graphql/work-categories.graphql.dart';

class WorksPage extends StatelessWidget {
  const WorksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Works Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Query_WorkCategories_Widget(builder: (result, {fetchMore, refetch}) {
              String text = result.parsedData?.workCategories.map((e) => e.textEn).join(', ') ?? '';
              return Text(text);
            }),
          ],
        ),
      ),
    );
  }
}