import 'dart:convert';
import 'package:medinven/features/purchases/domain/entities/purchase_entity.dart';

class PurchaseModel extends PurchaseEntity {
  PurchaseModel({
    required distributorName,
    required phoneNumber,
    required purchaseDate,
    required medicineName,
    required packageType,
    required quantityPerPack,
    required unit,
    required batchCode,
    required quantity,
    required expiryDate,
    required gst,
    required finalRatePerPack,
    required mrpPerPack,
    required manufacturer,
  }) : super(
          batchCode: batchCode,
          expiryDate: expiryDate,
          finalRatePerPack: finalRatePerPack,
          gst: gst,
          manufacturer: manufacturer,
          medicineName: medicineName,
          mrpPerPack: mrpPerPack,
          packageType: packageType,
          quantity: quantity,
          quantityPerPack: quantityPerPack,
          unit: unit,
          distributorName: distributorName,
          phoneNumber: phoneNumber,
          purchaseDate: purchaseDate,
        );
  @override
  Map<String, dynamic> toMap() {
    return {
      'medicineName': medicineName,
      'packageType': packageType,
      'quantityPerPack': quantityPerPack,
      'unit': unit,
      'batchCode': batchCode,
      'quantity': quantity,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'gst': gst,
      'finalRatePerPack': finalRatePerPack,
      'mrpPerPack': mrpPerPack,
      'manufacturer': manufacturer,
    };
  }

  factory PurchaseModel.fromMap(Map<String, dynamic> map) {
    return PurchaseModel(
      medicineName: map['medicineName'] ?? '',
      packageType: map['packageType'] ?? '',
      quantityPerPack: map['quantityPerPack']?.toInt() ?? 0,
      unit: map['unit'] ?? '',
      batchCode: map['batchCode'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      expiryDate: DateTime.fromMillisecondsSinceEpoch(map['expiryDate']),
      gst: map['gst']?.toInt() ?? 0,
      finalRatePerPack: map['finalRatePerPack']?.toInt() ?? 0,
      mrpPerPack: map['mrpPerPack']?.toInt() ?? 0,
      manufacturer: map['manufacturer'] ?? '',
      distributorName: map['distributorName'] ?? '',
      phoneNumber: map['phoneNumber'] ?? 0,
      purchaseDate: DateTime.fromMillisecondsSinceEpoch(map['purchaseDate']),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory PurchaseModel.fromJson(String source) =>
      PurchaseModel.fromMap(json.decode(source));
}
