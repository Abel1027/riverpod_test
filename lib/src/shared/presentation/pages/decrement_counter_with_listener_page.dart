import 'package:flutter/material.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_for_counter_title_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_for_counter_value_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_decrement_button_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_listener_for_counter_value_widget.dart';

class DecrementCounterPage extends StatelessWidget {
  const DecrementCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decrement Counter Page With Listener'),
      ),
      body: RiverpodListenerForCounterValueWidget(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RiverpodConsumerForCounterTitleWidget(),
              RiverpodConsumerForCounterValueWidget(),
            ],
          ),
        ),
      ),
      floatingActionButton: RiverpodConsumerDecrementButtonWidget(),
    );
  }
}
