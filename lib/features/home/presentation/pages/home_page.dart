import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/core/widgets/background.dart';
import 'package:bicycle/features/home/presentation/widgets/body.dart';
import 'package:bicycle/features/home/presentation/widgets/home_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenSize.height(context),
        width: ScreenSize.width(context),
        child: Stack(
          children: [
            Background(),
            SizedBox(
                height: ScreenSize.height(context),
                width: ScreenSize.width(context),
                child: SingleChildScrollView(
                  child: Column(
                    children: [HomeTopBar(), Body()],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
