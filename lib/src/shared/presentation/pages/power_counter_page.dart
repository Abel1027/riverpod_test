import 'package:flutter/material.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_power_counter_value_widget.dart';

class PowerCounterPage extends StatelessWidget {
  const PowerCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Power Counter Page'),
      ),
      body: Center(
        child: RiverpodConsumerPowerCounterValueWidget(),
      ),
    );
  }
}
