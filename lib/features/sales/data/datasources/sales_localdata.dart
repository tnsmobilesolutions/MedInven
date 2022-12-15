import 'package:medinven/features/sales/data/models/sales_model.dart';

abstract class SalesLocaldataSource {
  Future<SalesModel> getMedicineName();
}
