import 'package:bicycle/core/models/cycles_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bicycle/features/details/presentation/widgets/main_details_card.dart';
import 'package:bicycle/features/details/presentation/widgets/secondary_details_body.dart';

class DetailsBody extends StatelessWidget {
  final CyclesModel selectedCycle;

  const DetailsBody({super.key, required this.selectedCycle});

  @override
  Widget build(BuildContext context) {
    return 
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [MainDetailsCard(selectedCycle: selectedCycle,), SecondaryDetailsBody(selectedCycle: selectedCycle,)],
          ),
        );
      
    
  }
}
