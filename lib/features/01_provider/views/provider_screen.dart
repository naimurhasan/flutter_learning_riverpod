import 'package:flutter/material.dart';
import 'package:riverpod_getting_started/features/01_provider/states/m_provider_state.dart';
import 'package:riverpod_getting_started/widgets/m_scaffold.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MScaffold(
        body: Center(
          // access the global variables pool
          child: Consumer(builder: (context, watch, _) {
            var globalText = watch(mProvider); // keep an eye on "aNumber"
            return Text("$globalText");
          }),
    ));
  }
}
