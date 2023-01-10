import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlearning/slider_example/slider_provider.dart';

class SliderExampleView extends StatelessWidget {
  const SliderExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Example'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          ///------ Slider Widget

          Consumer<SliderProvider>(
              builder: (BuildContext context, sliderProvider, child) {
            return Slider(
              value: sliderProvider.sliderValue,
              onChanged: (double val) {
                sliderProvider.setSliderValue(val);
              },
            );
          }),

          ///----- Text Widget
          Consumer<SliderProvider>(
            builder: (context, provider, child) {
              return Column(
                children: [
                  Text(
                    provider.sliderValue.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(child: Container(
                        height: 100,
                        color: Colors.red.withOpacity(provider.sliderValue),
                      )),
                      Expanded(child: Container(
                        height: 100,
                        color: Colors.green.withOpacity(provider.sliderValue),
                      )),
                    ],
                  )
                ],
              );
            }
          )


        ],
      )
    );
  }
}