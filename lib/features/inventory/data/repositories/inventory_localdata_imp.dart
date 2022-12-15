import 'package:medinven/features/inventory/domain/entities/inventory_entity.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:medinven/features/inventory/domain/repositories/inventory_repositories.dart';

class InventoryLocalDataImpl implements InventoryRepository {
  @override
  Future<Either<Failure, InventoryEntity>>? getProductDetails;
}
