import 'package:flutter/material.dart';

class SiView extends StatelessWidget {
  const SiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Text('Simple Interest Calculator'),
    );
  }
}
