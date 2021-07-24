class MultiplierState {
  final int counter;
  final bool isLoading;
  MultiplierState({
    required this.counter,
    required this.isLoading,
  });

  factory MultiplierState.initial() => MultiplierState(
        counter: 0,
        isLoading: false,
      );

  MultiplierState copyWith({
    int? counter,
    bool? isLoading,
  }) {
    return MultiplierState(
      counter: counter ?? this.counter,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  String toString() =>
      'MultiplierState(counter: $counter, isLoading: $isLoading)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MultiplierState &&
        other.counter == counter &&
        other.isLoading == isLoading;
  }

  @override
  int get hashCode => counter.hashCode ^ isLoading.hashCode;
}
