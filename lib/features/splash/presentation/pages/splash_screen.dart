
import 'package:bicycle/core/helpers/base_screen.dart';
import 'package:bicycle/core/utils/constants/app_assets.dart';
import 'package:bicycle/core/utils/constants/app_colors.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:bicycle/injection_container.dart';
import 'package:flutter/material.dart';

class SplashScreen extends BaseScreen<SplashState, SplashCubit> {
  const SplashScreen({super.key});

  @override
  SplashCubit createBloc() => sl<SplashCubit>()..onLoadPage();

@override
  Widget buildScreen(BuildContext context, SplashCubit bloc, SplashState state) {
    return Scaffold(
      backgroundColor: AppColors.splashBackground,
      body: SizedBox(
        width: ScreenSize.width(context),
        height: ScreenSize.height(context),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                AppAssets.splashAnimation,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}