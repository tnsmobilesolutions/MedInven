import 'package:medinven/features/purchases/data/models/purchase_model.dart';

abstract class PurchaseRemoteDataSource {
  Future<PurchaseModel> getMedicineName();
}
