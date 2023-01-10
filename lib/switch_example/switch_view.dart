import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlearning/switch_example/switch_provider.dart';

class SwitchExampleView extends StatelessWidget {
  const SwitchExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Example'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Switch Example'),
            const SizedBox(height: 20),
            Consumer<SwitchProvider>(
              builder: (context, switchProvider, child) {
                return Column(
                  children: [
                  Switch(
                  value: switchProvider.switchValue,
                  onChanged: (value) {
                    switchProvider.toggleSwitch(value);
                  },
                ),
                    const SizedBox(height: 10),
                    Text(
                        'Switch is ${switchProvider.switchValue ? 'ON' : 'OFF'}'),


                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}