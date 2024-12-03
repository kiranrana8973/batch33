import 'package:batch33/common/mysnackbar.dart';
import 'package:flutter/material.dart';

class ShowSnackbarView extends StatelessWidget {
  const ShowSnackbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Show Snackbar'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showMySnackBar(context, 'Hello World');
              },
              child: const Text('Show Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                showMySnackBar(
                  context,
                  'Hello World2',
                  color: Colors.red,
                );
              },
              child: const Text('Show Snackbar'),
            ),
          ],
        ));
  }
}
