import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/inventory/domain/entities/inventory.dart';

abstract class SalesRepository {
  Future<Either<Failure, Inventory>>? getProductDetails;
}
