import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/features/00_home/models/sub_screen.dart';
import 'package:riverpod_getting_started/features/01_provider/views/provider_screen.dart';
import 'package:riverpod_getting_started/widgets/m_scaffold.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key,}) : super(key: key);

  final List<SubScreen> screens = [
    SubScreen("Provider", ProviderScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return MScaffold(
        body: Column(
          children: [
            for(int i = 0; i<screens.length; i++)
              Card(child: ListTile(title: Text(screens[i].title), onTap: screens[i].onTap,)),
          ],
      )
    );
  }
}
