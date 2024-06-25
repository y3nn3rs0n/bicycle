import 'package:bicycle/core/helpers/base_screen.dart';
import 'package:bicycle/core/utils/constants/app_colors.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/core/widgets/background.dart';
import 'package:bicycle/features/home/presentation/cubit/home_cubit.dart';
import 'package:bicycle/features/home/presentation/widgets/body.dart';
import 'package:bicycle/features/home/presentation/widgets/home_top_bar.dart';
import 'package:bicycle/injection_container.dart';
import 'package:flutter/material.dart';

class HomePage extends BaseScreen<HomeState, HomeCubit> {
  const HomePage({super.key});

  @override
  HomeCubit createBloc() => sl<HomeCubit>()..onHomeScreenPageLoad();

  @override
  Widget buildScreen(BuildContext context, HomeCubit bloc, HomeState state) {
    return state.loading
        ? Scaffold(
            backgroundColor: AppColors.splashBackground,
            body: SizedBox(
              width: ScreenSize.width(context),
              height: ScreenSize.height(context),
              child: Center(
                child: CircularProgressIndicator(
                  color: AppColors.primary,
                ),
              ),
            ),
          )
        : Scaffold(
            body: SizedBox(
              height: ScreenSize.height(context),
              width: ScreenSize.width(context),
              child: Stack(
                children: [
                  const Background(),
                  SizedBox(
                      height: ScreenSize.height(context),
                      width: ScreenSize.width(context),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            HomeTopBar(),
                            Body(
                              cycles: state.cycles,
                              selectedCycle: state.selectedCycle,
                              selected: bloc.selectedCycle,
                              isLoading: state.loading,
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ),
          );
  }
}





/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/core/widgets/background.dart';
import 'package:bicycle/features/home/presentation/widgets/body.dart';
import 'package:bicycle/features/home/presentation/widgets/home_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: ScreenSize.height(context),
        width: ScreenSize.width(context),
        child: Stack(
          
          children: [
            Background(),
            SizedBox(
                height: ScreenSize.height(context),
                width: ScreenSize.width(context),
                child: SingleChildScrollView(
                  child: Column(
                    children: [HomeTopBar(), Body()],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
 */