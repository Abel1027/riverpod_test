import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';
import 'package:riverpod_test/src/shared/presentation/pages/power_counter_page.dart';

class RiverpodConsumerDividedCounterValueWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Divition result by 2:'),

        /// use the [Consumer] widget to avoid rebuilding the entire widget
        Consumer(
          builder: (context, watch, child) {
            final dividerState = watch(dividerCounterProvider);

            if (dividerState.isLoading) {
              return Padding(
                padding: EdgeInsets.all(2.0),
                child: CircularProgressIndicator(),
              );
            }

            return Text(
              '${dividerState.counter}',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),

        ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PowerCounterPage(),
            ),
          ),
          child: Text('Go to power counter page'),
        ),
      ],
    );
  }
}
