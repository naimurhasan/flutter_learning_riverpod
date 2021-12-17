import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/widgets/custom_scaffold.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        body: Column(
          children: [
            ListTile(title: Text('Provider'),),
          ],
      )
    );
  }
}
