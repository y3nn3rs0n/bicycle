import 'package:flutter/material.dart';

class ToDoBarItem extends StatelessWidget {
  final IconData? itemLogo;
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
          child: itemLogo != "" ? Icon(itemLogo) : Text("ALL")),
    );
  }
}
