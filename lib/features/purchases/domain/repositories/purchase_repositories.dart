import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/purchases/domain/entities/purchase.dart';

abstract class SalesRepository {
  Future<Either<Failure, Purchase>>? getMedicineName;
}