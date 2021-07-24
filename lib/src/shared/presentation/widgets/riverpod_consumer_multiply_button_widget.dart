import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';

class RiverpodConsumerMultiplyButtonWidget extends StatelessWidget {
  const RiverpodConsumerMultiplyButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// use [context.read()] to access a provider without rebuilding the entire widget
    /// use the [notifier] property to access the notifier instead of the state
    final multiplierNotifier = context.read(multiplierCounterProvider.notifier);

    return FloatingActionButton(
      onPressed: () => multiplierNotifier.multiply(2),
      tooltip: 'Multiply',
      child: Text('*'),
    );
  }
}
