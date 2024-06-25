import 'package:bicycle/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ToDoBarItem extends StatelessWidget {
  final Image itemLogo;
  final Function onPress;

  const ToDoBarItem({
    super.key,
    required this.itemLogo,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(52, 200, 232, 1),
                  Color.fromRGBO(78, 74, 242, 1)
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: itemLogo != "" ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: itemLogo.image,
            color: AppColors.primary,
            ),
          ) : Text("ALL")),
    );
  }
}
