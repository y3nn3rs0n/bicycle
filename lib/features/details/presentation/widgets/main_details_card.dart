import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:bicycle/core/utils/constants/app_assets.dart';
import 'package:bicycle/core/utils/screen_size.dart';

class MainDetailsCard extends StatelessWidget {
  const MainDetailsCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: ScreenSize.width(context),
        height: ScreenSize.height(context) * 0.3,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(AppAssets.bicycle01);
          },
          itemCount: 3,
          pagination: SwiperPagination(),
        ),
      ),
    );
  }
}
