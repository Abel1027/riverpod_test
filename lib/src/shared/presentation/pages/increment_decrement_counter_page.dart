import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_for_counter_title_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_for_counter_value_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_decrement_button_widget.dart';
import 'package:riverpod_test/src/shared/presentation/widgets/riverpod_consumer_increment_button_widget.dart';

class IncrementDecrementCounterPage extends StatelessWidget {
  const IncrementDecrementCounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Increment/Decrement Counter Page'),
      ),
      body: ProviderScope(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RiverpodConsumerForCounterTitleWidget(),
              RiverpodConsumerForCounterValueWidget(
                providerId: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RiverpodConsumerIncrementButtonWidget(
                    heroTag: 'inc_dec_inc',
                    providerId: 2,
                  ),
                  SizedBox(width: 10.0),
                  RiverpodConsumerDecrementButtonWidget(
                    heroTag: 'inc_dec_dec',
                    providerId: 2,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
