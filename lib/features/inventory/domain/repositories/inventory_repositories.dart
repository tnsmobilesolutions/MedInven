import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/inventory/domain/entities/inventory_entity.dart';

abstract class InventoryRepository {
  Future<Either<Failure, InventoryEntity>>? getProductDetails;
}
