import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/constants/app_assets.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: ScreenSize.width(context),
        height: ScreenSize.height(context) * 0.3,
        decoration: BoxDecoration(
            color: Color.fromRGBO(53, 63, 84, 0.4),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Color.fromRGBO(53, 63, 84, 1)),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(53, 63, 84, 0.95),
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ]),
        child: Image.asset(AppAssets.bicycle01),
      ),
    );
  }
}
