import 'package:bicycle/features/home/data/datasources/home_data_source.dart';
import 'package:bicycle/injection_container.dart';

void registerDataSources() {

  sl.registerLazySingleton<HomeDataSource>(
    () => HomeDataSourceImpl(
    ),
  );

}
