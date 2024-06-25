import 'package:bicycle/core/errors/failures.dart';
import 'package:bicycle/core/models/cycles_model.dart';
import 'package:bicycle/features/home/data/datasources/home_data_source.dart';
import 'package:bicycle/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
class HomeRepositoryImpl implements HomeRepository {
  HomeDataSource homeDataSource;

  HomeRepositoryImpl({required this.homeDataSource});

   @override
  Future<Either<Failure, List<CyclesModel>?>> getCycles() async {
    try {
      return Right(await homeDataSource.getCycles());
    } on Exception catch (e) {
      return Left(
        NotificationsFailure(message: e.toString()),
      );
    }
  }
}

