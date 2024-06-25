import 'package:bicycle/core/models/cycles_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bicycle/features/home/presentation/widgets/main_card.dart';
import 'package:bicycle/features/home/presentation/widgets/secondary_body.dart';
import 'package:bicycle/features/home/presentation/widgets/to_do_bar.dart';

class Body extends StatelessWidget {
  final List<CyclesModel> cycles;
  final CyclesModel selectedCycle;
  final Function selected;
  final bool isLoading;
  const Body({super.key, required this.cycles, required this.selectedCycle, required this.selected, required this.isLoading});
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [MainCard(selectedCycle: selectedCycle,), ToDoBar(selectedCycle: selectedCycle,), SecondaryBody(cycles: cycles, selected: selected, isLoading: isLoading,)],
        )
      ],
    );
  }
}
