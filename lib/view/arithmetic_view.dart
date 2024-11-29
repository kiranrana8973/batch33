import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // int first = 0;
  // int second = 0;

  // TextEditingController
  final firstController = TextEditingController(text: '2');
  final secondController = TextEditingController(text: '3');
  int result = 0;

  // Global key for form state
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                // onChanged: (value) {
                //   // value lai int ma convert garera first ma store garako
                //   first = int.tryParse(value) ?? 0;
                // },
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first no';
                  }
                  return null;
                },
              ),
              // Invisible box
              const SizedBox(height: 10),
              TextFormField(
                // onChanged: (value) {
                //   second = int.tryParse(value) ?? 0;
                // },
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second no';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),

              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Page lai refresh garako
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        result = int.parse(firstController.text) +
                            int.parse(secondController.text);
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        result = int.parse(firstController.text) -
                            int.parse(secondController.text);
                      });
                    }
                  },
                  child: const Text('Subtraction'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
