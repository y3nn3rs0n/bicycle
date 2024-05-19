import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bicycle/features/details/presentation/widgets/main_details_card.dart';
import 'package:bicycle/features/details/presentation/widgets/secondary_details_body.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [MainDetailsCard(), SecondaryDetailsBody()],
        )
      ],
    );
  }
}
