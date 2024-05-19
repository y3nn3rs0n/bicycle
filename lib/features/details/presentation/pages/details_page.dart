import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/core/widgets/background.dart';
import 'package:bicycle/features/details/presentation/widgets/details_body.dart';
import 'package:bicycle/features/details/presentation/widgets/main_top_bar.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenSize.height(context),
        width: ScreenSize.width(context),
        child: Stack(
          children: [
            const Background(),
            SizedBox(
                height: ScreenSize.height(context),
                width: ScreenSize.width(context),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MainTopBar(),
                      DetailsBody(),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
