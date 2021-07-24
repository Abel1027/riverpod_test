class DividerState {
  final double counter;
  final bool isLoading;
  DividerState({
    required this.counter,
    required this.isLoading,
  });

  factory DividerState.initial() => DividerState(
        counter: 0,
        isLoading: false,
      );

  DividerState copyWith({
    double? counter,
    bool? isLoading,
  }) {
    return DividerState(
      counter: counter ?? this.counter,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  String toString() => 'DividerState(counter: $counter, isLoading: $isLoading)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DividerState &&
        other.counter == counter &&
        other.isLoading == isLoading;
  }

  @override
  int get hashCode => counter.hashCode ^ isLoading.hashCode;
}
