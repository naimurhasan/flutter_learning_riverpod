import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/features/02_state_providers/states/state_provider.dart';
import 'package:riverpod_getting_started/widgets/m_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // 3
    final selectedButton = watch(selectedButtonProvider).state;
    // 4
    // final isRed = watch(isRedProvider);
    final isRed = context.read(selectedButtonProvider).state == 'red';

    return MScaffold(
      body: Column(
        children: [
          Text(selectedButton),
          TextButton(
            // 5
            onPressed: () => context.read(selectedButtonProvider).state = 'red',
            child: Text('Red'),
          ),
          TextButton(
            // 5
            onPressed: () => context.read(selectedButtonProvider).state = 'blue',
            child: Text('Blue'),
          ),
          // 6
          isRed ? Text('Color is red') : Text('Color is not red')
        ],
      ),
    );
  }

  
}

