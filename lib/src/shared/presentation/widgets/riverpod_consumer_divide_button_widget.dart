import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';

class RiverpodConsumerDivideButtonWidget extends StatelessWidget {
  const RiverpodConsumerDivideButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// use [context.read()] to access a provider without rebuilding the entire widget
    /// use the [notifier] property to access the notifier instead of the state
    final dividerNotifier = context.read(dividerCounterProvider.notifier);

    return FloatingActionButton(
      onPressed: () => dividerNotifier.divide(2),
      tooltip: 'Divide',
      child: Text('÷'),
    );
  }
}
