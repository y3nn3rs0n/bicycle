import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bicycle/core/utils/constants/app_functions.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {

  SplashCubit() : super(SplashState()) {

  }

  void onLoadPage() async {
    await Future.delayed(Duration(seconds: 2));
    goToHome();
  }

  void goToHome() async {
    AppFunctions.goToHomePage();
  }
}
