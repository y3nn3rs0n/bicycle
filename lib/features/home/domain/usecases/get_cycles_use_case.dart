import 'package:bicycle/core/errors/failures.dart';
import 'package:bicycle/core/models/cycles_model.dart';
import 'package:bicycle/core/use_case/use_case.dart';
import 'package:bicycle/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

class GetCyclesUseCase extends UseCase<List<CyclesModel>?, NoParams> {
  HomeRepository homeRepository;

  GetCyclesUseCase({required this.homeRepository});

  @override
  Future<Either<Failure, List<CyclesModel>?>> call(params) async =>
      await homeRepository.getCycles();
}
