import 'package:bicycle/features/details/presentation/widgets/main_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UrbanPage extends StatelessWidget {
  const UrbanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MainTopBar(),
          Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Lottie.asset(
                'assets/animations/construction.json',
              ),
            ]),
          ),
        ],
      ),
    );
  }
}