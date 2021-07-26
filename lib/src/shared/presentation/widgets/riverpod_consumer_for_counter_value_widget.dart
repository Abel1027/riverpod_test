import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';

class RiverpodConsumerForCounterValueWidget extends StatelessWidget {
  final int providerId;

  const RiverpodConsumerForCounterValueWidget({
    Key? key,
    this.providerId = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// use the [Consumer] widget to avoid rebuilding the entire widget
    return Consumer(
      builder: (context, watch, child) {
        final counterState = watch(counterProvider(providerId));

        return Text(
          '${counterState.counter}',
          style: Theme.of(context).textTheme.headline4,
        );
      },
    );
  }
}
