import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/application/divider/divider_state.dart';
import 'package:riverpod_test/src/shared/infrastructure/counter_repository.dart';

class DividerNotifier extends StateNotifier<DividerState> {
  final CounterRepository _counterRepository;
  final int _counter;

  DividerNotifier(
    this._counterRepository,
    this._counter,
    // ) : super(DividerState.initial());
  ) : super(DividerState.initial().copyWith(counter: _counter.toDouble()));

  void setInitialState(int value) {
    state = state.copyWith(
      counter: _counter.toDouble(),
    );
  }

  void divide(int factor) async {
    state = state.copyWith(
      isLoading: true,
    );

    final divideResponse = await _counterRepository.divide(
      state.counter,
      factor,
    );

    state = state.copyWith(
      counter: divideResponse,
      isLoading: false,
    );
  }
}
