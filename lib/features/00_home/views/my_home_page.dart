import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/features/00_home/models/sub_screen_model.dart';
import 'package:riverpod_getting_started/features/01_provider/views/provider_screen.dart';
import 'package:riverpod_getting_started/features/02_state_providers/views/state_provider_screen.dart';
import 'package:riverpod_getting_started/features/03_change_notifier_dcounter/views/counter_screen.dart';
import 'package:riverpod_getting_started/features/04_state_notifier_provider_dtodo/views/todo_screen.dart';
import 'package:riverpod_getting_started/widgets/m_scaffold.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key,}) : super(key: key);

  final List<SubScreen> screens = [
    SubScreen("Provider", ProviderScreen()),
    SubScreen("State Provider", StateProviderScreen()),
    SubScreen("Change Notifier (Counter)", CounterScreen()),
    SubScreen("Sate Notifier Provider (Todo)", TodoScreen()),
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
