import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_getting_started/features/06_future_provider_dhttp/states/m_future_provider.dart';
import 'package:riverpod_getting_started/widgets/m_scaffold.dart';

class FutureProviderScree extends ConsumerWidget {
  final String title;
  const FutureProviderScree(this.title, {Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    AsyncValue<int> userCount = watch(userCountProvider);
    return MScaffold(
        title: title,
        body: userCount.when(
            data: (data) => Text('User count: $data'),
            loading:()=> CircularProgressIndicator(),
            error: (err,stack) => Text('error $err'))
    );
  }

}
