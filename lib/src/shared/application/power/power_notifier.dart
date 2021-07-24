import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/application/power/power_state.dart';

class PowerNotifier extends StateNotifier<PowerState> {
  final double _counter;

  PowerNotifier(this._counter) : super(PowerState.initial());

  void setInitialState(double value) {
    state = state.copyWith(
      counter: _counter,
    );
  }

  void power(int power) {
    state = state.copyWith(
      counter: pow(state.counter, power).toDouble(),
    );
  }
}
