import 'package:dartz/dartz.dart';
import 'package:medinven/core/error/failure.dart';
import 'package:medinven/features/sales/domain/entities/sales_entity.dart';
import 'package:medinven/features/sales/domain/repositories/sales_repositories.dart';
import 'package:medinven/features/sales/presentation/pages/Sales.dart';

class SalesLocalDataImpl implements SalesRepository {
  @override
  Future<Either<Failure, SalesEntity>>? getmedicineName;
}
