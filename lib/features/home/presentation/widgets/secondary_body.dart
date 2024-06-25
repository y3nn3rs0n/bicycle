import 'package:bicycle/core/models/cycles_model.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/features/home/presentation/widgets/secondary_card.dart';

class SecondaryBody extends StatelessWidget {
  final List<CyclesModel> cycles;
  final Function selected;
  final bool isLoading;
  const SecondaryBody({super.key, required this.cycles, required this.selected, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenSize.height(context) * 0.45,
      width: ScreenSize.width(context),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de columnas
          mainAxisSpacing: 20, // Espacio vertical entre los elementos
        ),
        itemCount: cycles.length, // Número total de elementos
        itemBuilder: (context, index) {
          return SecondaryCard(cycle: cycles[index], selected: selected, isLoading: isLoading,); // Retornar cada elemento
        },
      ),
    );
  }
}
