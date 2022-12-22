import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/sales/domain/entities/sales_entity.dart';
import 'package:medinven/features/sales/domain/repositories/sales_repositories.dart';
import 'package:medinven/features/sales/presentation/pages/salesList.dart';

class SalesRepositoryImpl implements SalesRepository {
  @override
  Future<Either<Failure, SalesEntity>>? getmedicineName() {
    return null;
  }

  static Either<Failure, SalesEntity>? addSale(SalesEntity newSale) {
    SalesList.invenList.add(newSale);
  }

  Future<Either<Failure, SalesEntity>>? removeSale() {
    return null;
  }

  Future<Either<Failure, SalesEntity>>? editSale() {
    return null;
  }
}
