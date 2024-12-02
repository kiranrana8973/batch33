import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Column View'),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.amber,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button 1'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button 2'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button 3'),
                ),
              ],
            ),
          ),
        ));
  }
}
