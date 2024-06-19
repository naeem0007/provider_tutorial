import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/change_theme_screen.dart';
import 'package:provider_tutorial/provider/counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${counter.count}',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: const Text('Increase')),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    counter.decreament();
                  },
                  child: const Text('Decrease')),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ChangeTheme()));
                  },
                  child: const Text('Go to Change theme page')),
            ],
          ),
        ));
  }
}
