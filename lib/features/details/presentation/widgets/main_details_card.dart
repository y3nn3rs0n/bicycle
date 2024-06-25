import 'package:bicycle/core/models/cycles_model.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class MainDetailsCard extends StatelessWidget {
  final CyclesModel selectedCycle;
  
  const MainDetailsCard({
    super.key, required this.selectedCycle,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: ScreenSize.width(context),
        height: ScreenSize.height(context) * 0.5,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(selectedCycle.image,);
          },
          itemCount: 3,
          pagination: SwiperPagination(),
        ),
      ),
    );
  }
}
