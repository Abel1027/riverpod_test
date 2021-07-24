import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';

class RiverpodConsumerDecrementButtonWidget extends StatelessWidget {
  const RiverpodConsumerDecrementButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// use [context.read()] to access a provider without rebuilding the entire widget
    /// use the [notifier] property to access the notifier instead of the state
    final counterNotifier = context.read(counterProvider.notifier);

    return FloatingActionButton(
      onPressed: () => counterNotifier.decrement(),
      tooltip: 'Decrement',
      child: Icon(Icons.remove),
    );
  }
}
