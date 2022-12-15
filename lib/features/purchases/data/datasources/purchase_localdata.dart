import 'package:medinven/features/purchases/data/models/purchase_model.dart';
import 'package:medinven/features/purchases/domain/usecases/get_medicine_name.dart';

abstract class PurchaseLocalDataSource {
  Future<PurchaseModel> getMedicineName();
}
