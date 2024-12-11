import 'package:batch33/view/snackbar_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Batch 33',
      home: SnackbarView(),
    );
  }
}
