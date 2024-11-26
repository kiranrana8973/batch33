import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithemtic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter First No',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (value) {
                second = int.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second No',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('Result : $result',
                style: const TextStyle(
                  fontSize: 20,
                )),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // State lai change gara
                  // buil method ma feri jau ani refresh gara
                  setState(() {
                    result = first + second;
                  });
                },
                child: const Text('Addition'),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = first - second;
                  });
                },
                child: const Text('Subtraction'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
