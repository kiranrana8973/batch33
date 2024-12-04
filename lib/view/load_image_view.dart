import 'package:flutter/material.dart';

class Image_View extends StatelessWidget {
  const Image_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.yellow,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.yellow,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
