import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
<<<<<<< HEAD
  // int first = 0;
  // int second = 0;

  // TextEditingController
  final firstController = TextEditingController(text: '2');
  final secondController = TextEditingController(text: '3');
  int result = 0;

  // Global key for form state
  final myKey = GlobalKey<FormState>();

=======
  // Global key
  final _formKey = GlobalKey<FormState>();

  final firstController = TextEditingController(text: '45');
  final secondController = TextEditingController();

  int result = 0;

>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
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
=======
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
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter first no';
                  }
                  return null;
                },
              ),
<<<<<<< HEAD
              // Invisible box
              const SizedBox(height: 10),
=======
              const SizedBox(
                height: 8,
              ),
>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
              TextFormField(
                // onChanged: (value) {
                //   second = int.tryParse(value) ?? 0;
                // },
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
<<<<<<< HEAD
                  labelText: 'Enter second number',
                  border: OutlineInputBorder(),
=======
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter second no';
                  }
                  return null;
                },
              ),
<<<<<<< HEAD
              const SizedBox(height: 10),

              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 10),
=======
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
>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
<<<<<<< HEAD
                    // Page lai refresh garako
                    if (myKey.currentState!.validate()) {
=======
                    if (_formKey.currentState!.validate()) {
>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
                      setState(() {
                        result = int.parse(firstController.text) +
                            int.parse(secondController.text);
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
<<<<<<< HEAD
              const SizedBox(height: 10),

=======
              const SizedBox(
                height: 8,
              ),
>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
<<<<<<< HEAD
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
=======
                    setState(() {
                      //result = first - second;
                    });
                  },
                  child: const Text('Subtraction'),
                ),
              ),
>>>>>>> 0c58555b091b7d0c34f12edf32b86e792c62a880
            ],
          ),
        ),
      ),
    );
  }
}
