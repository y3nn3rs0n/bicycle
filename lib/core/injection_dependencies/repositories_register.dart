import 'package:bicycle/features/home/data/repositories/home_repository_impl.dart';
import 'package:bicycle/features/home/domain/repositories/home_repository.dart';
import 'package:bicycle/injection_container.dart';


void registerRepositories() {

  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      homeDataSource: sl(),
    ),
  );
}
