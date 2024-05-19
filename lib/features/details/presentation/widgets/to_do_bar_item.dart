import 'package:flutter/material.dart';

class ToDoBarItem extends StatelessWidget {
  final IconData? itemLogo;

  const ToDoBarItem({
    super.key,
    required this.itemLogo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
