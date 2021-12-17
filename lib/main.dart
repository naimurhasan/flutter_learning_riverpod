import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/services/navigation_service.dart';

import 'features/01_home/views/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RiverPod Demo',
      navigatorKey: NavigationService.key,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Riverpod'),
    );
  }
}
