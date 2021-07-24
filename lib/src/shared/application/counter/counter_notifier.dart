import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/application/counter/counter_state.dart';

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier() : super(CounterState.initial());

  void increment() {
    state = state.copyWith(
      counter: state.counter + 1,
    );
  }

  void decrement() {
    state = state.copyWith(
      counter: state.counter - 1,
    );
  }
}
