import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/sales/domain/entities/sales.dart';

abstract class SalesRepository {
  Future<Either<Failure, Sales>>? getmedicineName;
}
