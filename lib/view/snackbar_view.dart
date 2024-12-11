import 'package:batch33/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class SnackbarView extends StatelessWidget {
  const SnackbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                showMySnackBar(
                  context: context,
                  message: "Button 2",
                  color: Colors.red,
                );
              },
              child: const Text('Button 1'),
            ),
            ElevatedButton(
              onPressed: () {
                showMySnackBar(context: context, message: "Button 2");
              },
              child: const Text('Button 2'),
            )
          ],
        ),
      ),
    );
  }
}
