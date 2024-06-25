import 'package:bicycle/core/models/cycles_model.dart';
import 'package:bicycle/core/utils/constants/app_assets.dart';
import 'package:bicycle/core/utils/constants/app_functions.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/features/home/presentation/widgets/to_do_bar_item.dart';

class ToDoBar extends StatelessWidget {
   final CyclesModel selectedCycle;

  const ToDoBar({super.key, required this.selectedCycle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ToDoBarItem(
              itemLogo: Image.asset(
                AppAssets.cycle,
                fit: BoxFit.contain,
              ),
              onPress: () => AppFunctions.goTodetails(cycle: selectedCycle),
            ),
            ToDoBarItem(
             itemLogo: Image.asset(
                AppAssets.hat,
                fit: BoxFit.contain,
              ),
              onPress: () => AppFunctions.goToHatsPage(),
            ),
            ToDoBarItem(
             itemLogo: Image.asset(
                AppAssets.mountain,
                fit: BoxFit.contain,
              ),
              onPress: () => AppFunctions.goToMountainPage(),
            ),
            ToDoBarItem(
              itemLogo: Image.asset(
                AppAssets.road,
                fit: BoxFit.contain,
              ),
              onPress: () => AppFunctions.goToUrbanPage(),
            ),
          ],
        ),
      ),
    );
  }
}
