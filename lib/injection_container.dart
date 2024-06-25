
import 'package:bicycle/core/injection_dependencies/cubits_register.dart';
import 'package:bicycle/core/injection_dependencies/data_sources_register.dart';
import 'package:bicycle/core/injection_dependencies/repositories_register.dart';
import 'package:bicycle/core/injection_dependencies/use_cases_register.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  registerDataSources();
  registerRepositories();
  registerUseCases();
  registerCubits();
}
