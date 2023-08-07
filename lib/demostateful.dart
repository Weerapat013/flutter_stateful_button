import 'package:flutter/material.dart';

class DemoStateful extends StatefulWidget {
  const DemoStateful({super.key});

  @override
  State<DemoStateful> createState() => _DemoStatefulState();
}

class _DemoStatefulState extends State<DemoStateful> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stateful Widgets Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Counter : $counter',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              child: const Text(
                'Click Me!',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
