import 'package:batch33/view/arithmetic_view.dart';
import 'package:batch33/view/column_view.dart';
import 'package:batch33/view/first_view.dart';
import 'package:batch33/view/rich_text_view.dart';
import 'package:batch33/view/si_view.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            color: Colors.green[100],
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ArithmeticView();
                }));
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calculate,
                    size: 30,
                  ),
                  Text(
                    'Arithmetic',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[100],
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SiView();
                }));
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calculate,
                    size: 30,
                  ),
                  Text(
                    'Simple Interest',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[100],
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FirstView();
                }));
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calculate,
                    size: 30,
                  ),
                  Text(
                    'First View',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[100],
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const RichTextView();
                }));
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calculate,
                    size: 30,
                  ),
                  Text(
                    'Rich Text View',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.green[100],
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColumnView();
                }));
              },
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calculate,
                    size: 30,
                  ),
                  Text(
                    'Column View',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
