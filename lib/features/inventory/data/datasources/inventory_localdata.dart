import 'package:medinven/features/inventory/data/models/inventory_model.dart';

abstract class InventoryLocalDataSource {
  Future<InventoryModel> getProductDetails();
}
