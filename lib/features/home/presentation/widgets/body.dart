import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bicycle/features/home/presentation/widgets/main_card.dart';
import 'package:bicycle/features/home/presentation/widgets/secondary_body.dart';
import 'package:bicycle/features/home/presentation/widgets/to_do_bar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [MainCard(), ToDoBar(), SecondaryBody()],
        )
      ],
    );
  }
}
