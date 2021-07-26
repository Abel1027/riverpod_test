import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/application/counter/counter_state.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';
import 'package:riverpod_test/src/shared/presentation/pages/increment_decrement_counter_page.dart';

class RiverpodListenerForCounterValueWidget extends StatelessWidget {
  final Widget child;

  const RiverpodListenerForCounterValueWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// listening to events
    return ProviderListener<CounterState>(
      provider: counterProvider(1),
      onChange: (context, state) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'New counter value: ${state.counter} '
              '${state.counter == 5 ? 'Going to increment/decrement page' : ''}',
            ),
          ),
        );

        if (state.counter == 5) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => IncrementDecrementCounterPage(),
            ),
          );
        }
      },
      child: child,
    );
  }
}
