import 'package:bicycle/core/helpers/base_screen.dart';
import 'package:bicycle/core/utils/screen_size.dart';
import 'package:bicycle/core/widgets/background.dart';
import 'package:bicycle/features/details/presentation/cubit/details_cubit.dart';
import 'package:bicycle/features/details/presentation/widgets/details_body.dart';
import 'package:bicycle/features/details/presentation/widgets/main_top_bar.dart';
import 'package:bicycle/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends BaseScreen<DetailsState, DetailsCubit> {
  final Map<String, dynamic> params;
  const DetailsPage({super.key, required this.params});

  @override
  DetailsCubit createBloc() => sl<DetailsCubit>()..onDetailsPageLoad(params);

  @override
  Widget buildScreen(
      BuildContext context, DetailsCubit bloc, DetailsState state) {
    return Scaffold(
      body: SizedBox(
        height: ScreenSize.height(context),
        width: ScreenSize.width(context),
        child: Stack(
          children: [
            const Background(),
            
            SizedBox(
              height: ScreenSize.height(context),
              width: ScreenSize.width(context),
              child: 
                 
                  DetailsBody(
                    selectedCycle: state.selectedCycle,
                  
              ),
            ),
            MainTopBar(),
          ],
        ),
      ),
    );
  }
}
