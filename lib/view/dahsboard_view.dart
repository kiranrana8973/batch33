import 'package:batch33/view/arithmetic_view.dart';
import 'package:batch33/view/first_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstView()),
                );
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  Text('First View'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArithmeticView()),
                );
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  Text('Arithmetic View'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArithmeticView()),
                );
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  Text('Area of Circle'),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArithmeticView()),
                );
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.ac_unit),
                  Text('Simple interest'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
