import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/purchases/domain/entities/purchase_entity.dart';

abstract class PurchaseRepository {
  Future<Either<Failure, PurchaseEntity>>? getMedicineName;
}
