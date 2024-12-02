import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // Global key
  final _formKey = GlobalKey<FormState>();

  final firstController = TextEditingController(text: '45');
  final secondController = TextEditingController();

  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithemtic'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                // onChanged: (value) {
                //   first = int.tryParse(value) ?? 0;
                // },
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first no';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                // onChanged: (value) {
                //   second = int.tryParse(value) ?? 0;
                // },
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second no';
                  }
                  return null;
                },
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
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        result = int.parse(firstController.text) +
                            int.parse(secondController.text);
                      });
                    }
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
                      //result = first - second;
                    });
                  },
                  child: const Text('Subtraction'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
