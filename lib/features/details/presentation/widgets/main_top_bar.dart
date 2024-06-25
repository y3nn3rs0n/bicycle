import 'package:bicycle/core/utils/constants/app_colors.dart';
import 'package:bicycle/core/utils/constants/app_functions.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class MainTopBar extends StatelessWidget {
  const MainTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SizedBox(
          height: 90,
          width: ScreenSize.width(context),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
                onTap: () => AppFunctions.pop(),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(52, 200, 232, 1),
                          Color.fromRGBO(78, 74, 242, 1)
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.primary,
                  ),
                ))
          ]),
        ),
      );
}
