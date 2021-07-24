class PowerState {
  final double counter;
  PowerState({
    required this.counter,
  });

  factory PowerState.initial() => PowerState(
        counter: 0,
      );

  PowerState copyWith({
    double? counter,
  }) {
    return PowerState(
      counter: counter ?? this.counter,
    );
  }

  @override
  String toString() => 'PowerState(counter: $counter)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PowerState && other.counter == counter;
  }

  @override
  int get hashCode => counter.hashCode;
}
