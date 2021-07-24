import 'package:flutter/material.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_divided_counter_value_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_divide_button_widget.dart';

class DividerCounterPage extends StatelessWidget {
  const DividerCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Divide Counter Page'),
      ),
      body: Center(
        child: RiverpodConsumerDividedCounterValueWidget(),
      ),
      floatingActionButton: RiverpodConsumerDivideButtonWidget(),
    );
  }
}
