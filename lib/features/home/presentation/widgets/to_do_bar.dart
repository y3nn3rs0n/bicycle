import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bicycle/features/home/presentation/widgets/to_do_bar_item.dart';

class ToDoBar extends StatelessWidget {
  const ToDoBar({super.key});

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
              itemLogo: Icons.text_rotation_angleup_outlined,
              onPress: () {},
            ),
            ToDoBarItem(
              itemLogo: Icons.pedal_bike_rounded,
              onPress: () => context.go("/details"),
            ),
            ToDoBarItem(
              itemLogo: Icons.electric_bike,
              onPress: () {},
            ),
            ToDoBarItem(
              itemLogo: Icons.stacked_bar_chart_sharp,
              onPress: () {},
            ),
            ToDoBarItem(
              itemLogo: Icons.stacked_bar_chart_sharp,
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
