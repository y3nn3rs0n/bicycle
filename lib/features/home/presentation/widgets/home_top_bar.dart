import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/constants/app_assets.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SizedBox(
          height: 90,
          width: ScreenSize.width(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Chose your bike",
                style: TextStyle(color: Colors.white),
              ),
              GestureDetector(
                  child: Image.asset(
                AppAssets.searchIcon,
              ))
            ],
          ),
        ),
      );
}
