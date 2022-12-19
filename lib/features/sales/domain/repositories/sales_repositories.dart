import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/sales/domain/entities/sales_entity.dart';

abstract class SalesRepository {
  Future<Either<Failure, SalesEntity>>? getmedicineName();
}
