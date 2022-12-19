import 'package:medinven/features/sales/data/models/sales_model.dart';

abstract class SalesRemotedataSource {
  Future<SalesModel> getMedicineName();
}
