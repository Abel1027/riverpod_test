import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/application/multiplier/multiplier_state.dart';
import 'package:riverpod_test/src/shared/infrastructure/counter_repository.dart';

class MultiplierNotifier extends StateNotifier<MultiplierState> {
  final CounterRepository _counterRepository;

  MultiplierNotifier(this._counterRepository)
      : super(MultiplierState.initial());

  void setInitialState(int value) {
    state = state.copyWith(
      counter: value,
    );
  }

  void multiply(int factor) async {
    state = state.copyWith(
      isLoading: true,
    );

    final multiplyResponse = await _counterRepository.multiply(
      state.counter,
      factor,
    );

    state = state.copyWith(
      counter: multiplyResponse,
      isLoading: false,
    );
  }
}
