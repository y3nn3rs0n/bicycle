import 'package:bicycle/core/models/cycles_model.dart';
import 'package:bicycle/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class SecondaryCard extends StatelessWidget {
  final CyclesModel cycle;
  final Function selected;
  final bool isLoading;

  const SecondaryCard({
    super.key, required this.cycle, required this.selected, required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GestureDetector(
        onTap: () => selected(cycle),
        child: Container(
          width: ScreenSize.width(context) * 0.2,
          height: ScreenSize.height(context) * 0.1,
          decoration: BoxDecoration(
              color: Color.fromRGBO(53, 63, 84, 0.7),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Color.fromRGBO(53, 63, 84, 1)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(53, 63, 84, 0.95),
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ]),
          child: Image.network(
          cycle.image,
          loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) {
              return child;
            } else {
              return Center(child: CircularProgressIndicator(color: AppColors.splashBackground,));
            }
          },
          errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
            return Text('Error al cargar la imagen');
          },
        ),
        ),
      ),
    );
  }
}
