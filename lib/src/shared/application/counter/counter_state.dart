class CounterState {
  final int counter;
  CounterState({
    required this.counter,
  });

  factory CounterState.initial() => CounterState(
        counter: 0,
      );

  CounterState copyWith({
    int? counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  @override
  String toString() => 'CounterState(counter: $counter)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CounterState && other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}
