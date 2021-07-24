import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';

/// by extending [ConsumerWidget] you listen to providers and rebuilds the entire widget
class RiverpodConsumerForCounterTitleWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final counterTitle = watch(counterTitleProvider);

    return Text(counterTitle);
  }
}
