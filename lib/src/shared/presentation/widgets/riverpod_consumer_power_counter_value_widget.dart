import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';

class RiverpodConsumerPowerCounterValueWidget extends StatelessWidget {
  const RiverpodConsumerPowerCounterValueWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// use the [Consumer] widget to avoid rebuilding the entire widget
    return Consumer(
      builder: (context, watch, child) {
        final powerCounterState = watch(powerCounterProvider(3));

        return Text(
          '${powerCounterState.counter}',
          style: Theme.of(context).textTheme.headline4,
        );
      },
    );
  }
}
