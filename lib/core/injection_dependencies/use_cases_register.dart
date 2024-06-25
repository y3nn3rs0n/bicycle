import 'package:bicycle/features/home/domain/usecases/get_cycles_use_case.dart';
import 'package:bicycle/injection_container.dart';


void registerUseCases() {
  sl.registerLazySingleton(
    () => GetCyclesUseCase(
      homeRepository: sl(),
    ),
  );
}
