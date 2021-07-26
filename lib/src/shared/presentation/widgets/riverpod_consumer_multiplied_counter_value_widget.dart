import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/infrastructure/di/providers.dart';

class RiverpodConsumerMultipliedCounterValueWidget extends StatefulWidget {
  const RiverpodConsumerMultipliedCounterValueWidget({Key? key})
      : super(key: key);

  @override
  _RiverpodConsumerMultipliedCounterValueWidgetState createState() =>
      _RiverpodConsumerMultipliedCounterValueWidgetState();
}

class _RiverpodConsumerMultipliedCounterValueWidgetState
    extends State<RiverpodConsumerMultipliedCounterValueWidget> {
  @override
  void initState() {
    final counterValue = context.read(counterProvider(1)).counter;
    context
        .read(multiplierCounterProvider.notifier)
        .setInitialState(counterValue);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Multiplication result by 2:'),

        /// use the [Consumer] widget to avoid rebuilding the entire widget
        Consumer(
          builder: (context, watch, child) {
            final multiplierState = watch(multiplierCounterProvider);

            if (multiplierState.isLoading) {
              return Padding(
                padding: EdgeInsets.all(2.0),
                child: CircularProgressIndicator(),
              );
            }

            return Text(
              '${multiplierState.counter}',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ],
    );
  }
}
