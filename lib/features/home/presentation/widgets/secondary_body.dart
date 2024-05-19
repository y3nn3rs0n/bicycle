import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/features/home/presentation/widgets/secondary_card.dart';

class SecondaryBody extends StatelessWidget {
  const SecondaryBody({super.key});

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
        itemCount: 8, // Número total de elementos
        itemBuilder: (context, index) {
          return SecondaryCard(); // Retornar cada elemento
        },
      ),
    );
  }
}
