import 'package:bicycle/core/errors/failures.dart';
import 'package:bicycle/core/models/cycles_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
   Future<Either<Failure, List<CyclesModel>?>> getCycles();
}
