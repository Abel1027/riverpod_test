import 'package:flutter/material.dart';
import 'package:riverpod_test/src/shared/presentation/pages/divider_counter_page.dart';
import 'package:riverpod_test/src/shared/presentation/pages/multiply_counter_page.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_for_counter_title_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_for_counter_value_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_increment_button_widget.dart';
import 'package:riverpod_test/src/shared/presentation/pages/decrement_counter_with_listener_page.dart';

class IncrementCounterPage extends StatelessWidget {
  const IncrementCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RiverpodConsumerForCounterTitleWidget(),
            RiverpodConsumerForCounterValueWidget(),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DecrementCounterPage(),
                ),
              ),
              child: Text('Go to decrement counter page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MultiplyCounterPage(),
                ),
              ),
              child: Text('Go to multiplier counter page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DividerCounterPage(),
                ),
              ),
              child: Text('Go to divider counter page'),
            ),
          ],
        ),
      ),
      floatingActionButton: RiverpodConsumerIncrementButtonWidget(),
    );
  }
}
