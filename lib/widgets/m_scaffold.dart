import 'package:flutter/material.dart';

class MScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  const MScaffold({Key? key, this.title = "RiverPod Demo", required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$title'),),
      body: SafeArea(child: body),
    );
  }
}
