import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/sales/domain/entities/sales_entity.dart';
import 'package:medinven/features/sales/domain/repositories/sales_repositories.dart';

class SalesRepositoryImpl implements SalesRepository {
  @override
  Future<Either<Failure, SalesEntity>>? getmedicineName() {
    return null;
  }
}
