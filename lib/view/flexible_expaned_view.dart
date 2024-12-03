import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 700,
            width: double.infinity,
            color: Colors.yellow,
          ),
          Flexible(
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
