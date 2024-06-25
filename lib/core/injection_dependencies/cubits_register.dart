import 'package:bicycle/features/details/presentation/cubit/details_cubit.dart';
import 'package:bicycle/features/home/presentation/cubit/home_cubit.dart';
import 'package:bicycle/features/splash/presentation/cubit/splash_cubit.dart';
import 'package:bicycle/injection_container.dart';

void registerCubits() {
  sl.registerFactory(
    () => HomeCubit(
      getCyclesUseCase: sl()
    ),
  );
  sl.registerFactory(
    () => DetailsCubit(
    ),
  );
   sl.registerFactory(
    () => SplashCubit(
    ),
  );
}
