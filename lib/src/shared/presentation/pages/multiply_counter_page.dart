import 'package:flutter/material.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_multiplied_counter_value_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_multiply_button_widget.dart';

class MultiplyCounterPage extends StatelessWidget {
  const MultiplyCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiply Counter Page'),
      ),
      body: Center(
        child: RiverpodConsumerMultipliedCounterValueWidget(),
      ),
      floatingActionButton: RiverpodConsumerMultiplyButtonWidget(),
    );
  }
}
