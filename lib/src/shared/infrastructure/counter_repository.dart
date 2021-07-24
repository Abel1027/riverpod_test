class CounterRepository {
  Future<int> multiply(int value, int factor) async {
    var _result = 0;

    await Future.delayed(
      Duration(seconds: 3),
      () {
        _result = value * factor;
      },
    );

    return _result;
  }

  Future<double> divide(double value, int factor) async {
    var _result = 0.0;

    await Future.delayed(
      Duration(seconds: 3),
      () {
        _result = value / factor;
      },
    );

    return _result;
  }
}
