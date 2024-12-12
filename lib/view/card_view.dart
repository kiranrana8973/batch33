import 'package:batch33/common/my_card_view.dart';
import 'package:batch33/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i <= 50; i++) ...{
                if (i % 2 == 0) ...{
                  GestureDetector(
                    onDoubleTap: () {
                      showMySnackBar(context: context, message: 'Card $i');
                    },
                    child: MyCard(text: 'Card $i', color: Colors.green),
                  ),
                } else ...{
                  GestureDetector(
                    onDoubleTap: () {
                      showMySnackBar(context: context, message: 'Card $i');
                    },
                    child: MyCard(text: 'Card $i', color: Colors.red),
                  ),
                }
              }
            ],
          ),
        ),
      ),
    );
  }
}
