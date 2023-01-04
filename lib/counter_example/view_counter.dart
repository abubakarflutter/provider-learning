import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlearning/counter_example/provider_counter.dart';

class CounterExampleProvider extends StatelessWidget {
  const CounterExampleProvider({Key? key}) : super(key: key);



  // Provider.of<Co>(context);


  @override
  Widget build(BuildContext context) {
    final counterProviderInstance = Provider.of<CounterProvider>(context, listen: false);

    log('build() called');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Consumer<CounterProvider>(
          builder: (context, counterProvider, child) {
            return Text(
              '${counterProvider.counter}',
              style: Theme.of(context).textTheme.headline4,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProviderInstance.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}