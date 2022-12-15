import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/purchases/domain/entities/purchase.dart';
import 'package:medinven/features/purchases/domain/repositories/purchase_repositories.dart';

class PurchaseLocalDataImpl implements PurchaseRepository {
  @override
  Future<Either<Failure, Purchase>>? getMedicineName;
}
