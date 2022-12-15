import 'package:medinven/features/sales/data/models/sales_model.dart';
import 'package:medinven/features/sales/domain/usecases/get_medicinename.dart';

abstract class SalesLocaldataImpl {
  Future<SalesModels> getMedicineName();
}
