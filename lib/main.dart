import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlearning/slider_example/slider_provider.dart';
import 'package:providerlearning/slider_example/slider_view.dart';

import 'counter_example/provider_counter.dart';
import 'counter_example/view_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => CounterProvider()),
        ChangeNotifierProvider(create: (BuildContext context) => SliderProvider()),
      ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const CounterExampleProvider(),
      home: const SliderExampleView(),
     ),
    );
  }
}