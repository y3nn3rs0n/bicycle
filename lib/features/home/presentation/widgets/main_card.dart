import 'package:bicycle/core/models/cycles_model.dart';
import 'package:bicycle/core/utils/constants/app_colors.dart';
import 'package:bicycle/core/utils/constants/app_functions.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class MainCard extends StatelessWidget {
  final CyclesModel selectedCycle;
  const MainCard({
    super.key, required this.selectedCycle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: ScreenSize.width(context),
        height: ScreenSize.height(context) * 0.3,
        decoration: BoxDecoration(
            color: Color.fromRGBO(53, 63, 84, 0.4),
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
      child: GestureDetector(
        onTap: () => AppFunctions.goTodetails(cycle: selectedCycle),
        child: Image.network(
            selectedCycle.image,
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