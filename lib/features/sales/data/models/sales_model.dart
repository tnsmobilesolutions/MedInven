import 'dart:convert';
import 'dart:html';

import 'package:medinven/features/sales/domain/entities/sales_entity.dart';

class SalesModels extends SalesEntity {
  SalesModels({
    required medicineName,
    required quantity,
    required discount,
    required mrp,
    required gst,
    required batchCode,
    required expiryDate,
    required marginLeft,
  }) : super(
          batchCode: batchCode,
          discount: discount,
          expiryDate: expiryDate,
          gst: gst,
          marginLeft: marginLeft,
          medicineName: medicineName,
          mrp: mrp,
          quantity: quantity,
        );
  @override
  Map<String, dynamic> toMap() {
    return {
      'medicineName': medicineName,
      'quantity': quantity,
      'discount': discount,
      'mrp': mrp,
      'gst': gst,
      'batchCode': batchCode,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'marginLeft': marginLeft,
    };
  }

  factory SalesModels.fromMap(Map<String, dynamic> map) {
    return SalesModels(
      medicineName: map['medicineName'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      discount: map['discount']?.toInt() ?? 0,
      mrp: map['mrp']?.toInt() ?? 0,
      gst: map['gst']?.toInt() ?? 0,
      batchCode: map['batchCode'] ?? '',
      expiryDate: DateTime.fromMillisecondsSinceEpoch(map['expiryDate']),
      marginLeft: map['marginLeft'] ?? '',
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory SalesModels.fromJson(String source) =>
      SalesModels.fromMap(json.decode(source));
}