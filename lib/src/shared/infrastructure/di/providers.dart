import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/application/counter/counter_notifier.dart';
import 'package:riverpod_test/src/shared/application/counter/counter_state.dart';
import 'package:riverpod_test/src/shared/application/multiplier/multiplier_notifier.dart';
import 'package:riverpod_test/src/shared/application/multiplier/multiplier_state.dart';
import 'package:riverpod_test/src/shared/application/power/power_notifier.dart';
import 'package:riverpod_test/src/shared/application/power/power_state.dart';
import 'package:riverpod_test/src/shared/infrastructure/counter_repository.dart';
import 'package:riverpod_test/src/shared/application/divider/divider_notifier.dart';
import 'package:riverpod_test/src/shared/application/divider/divider_state.dart';

/// this is the basic provider, it just stores one state
final counterTitleProvider = Provider(
    (ref) => 'You have pushed the button this many times (using Riverpod):');

/// with [StateNotifierProvider] you can access a notifier to emit events and a multiple state class
final counterProvider = StateNotifierProvider<CounterNotifier, CounterState>(
    (ref) => CounterNotifier());

final counterRepositoryProvider = Provider((ref) => CounterRepository());

/// you can access any provider by using the [ref] object
///
/// you should call [autoDispose] method to avoid a [setState] during building error
/// when you come back to the multiply counter page
final multiplierCounterProvider =
    StateNotifierProvider.autoDispose<MultiplierNotifier, MultiplierState>(
        (ref) => MultiplierNotifier(ref.watch(counterRepositoryProvider)));

final dividerCounterProvider =
    StateNotifierProvider<DividerNotifier, DividerState>((ref) {
  /// [counter] will be updated every time [counter] changes in [counterProvider]
  final counter = ref.watch(counterProvider).counter;

  /// [counter] will NOT be updated even [counter] changes in [counterProvider]
  /// however, using [read] in the body of a provider is a BAD PRACTICE
  // final counter = ref.read(counterProvider).counter;

  return DividerNotifier(ref.watch(counterRepositoryProvider), counter);
  // return DividerNotifier(ref.watch(counterRepositoryProvider), counter)
  //   ..setInitialState(counter);
});

/// intermediate provider
/// this is used to listen to only one property and avoid rebuilding when unneccesary properties changed
final Provider<double> _intermediateCounterProvider = Provider((ref) {
  final counter = ref.watch(dividerCounterProvider).counter;
  return counter;
});

final powerCounterProvider =
    StateNotifierProvider.family<PowerNotifier, PowerState, int>((ref, power) {
  final counter = ref.watch(_intermediateCounterProvider);

  return PowerNotifier(counter)
    ..setInitialState(counter)
    ..power(power);
});
