import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/constants/app_assets.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color.fromRGBO(36, 44, 59, 1),
          width: ScreenSize.width(context),
          height: ScreenSize.height(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                AppAssets.bluRectangleBackground,
                scale: 2,
              ),
            ],
          ),
        )
      ],
    );
  }
}
