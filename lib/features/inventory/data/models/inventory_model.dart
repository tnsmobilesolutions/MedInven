import 'dart:convert';
import 'package:medinven/features/inventory/domain/entities/inventory_entity.dart';

class InventoryModel extends InventoryEntity {
  InventoryModel({
    required medicineName,
    required quantityInStock,
    required quantityPerPack,
    required packagingType,
    required quantity,
    required expiryDate,
    required salt,
    required manufacturer,
  }) : super(
          expiryDate: expiryDate,
          manufacturer: manufacturer,
          medicineName: medicineName,
          packagingType: packagingType,
          quantity: quantity,
          quantityInStock: quantityInStock,
          quantityPerPack: quantityPerPack,
          salt: salt,
        );
  factory InventoryModel.fromMap(Map<String, dynamic> map) {
    return InventoryModel(
      medicineName: map['medicineName'] ?? '',
      quantityInStock: map['quantityInStock']?.toInt() ?? 0,
      quantityPerPack: map['quantityPerPack']?.toInt() ?? 0,
      packagingType: map['packagingType'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      expiryDate: DateTime.fromMillisecondsSinceEpoch(map['expiryDate']),
      salt: map['salt'] ?? '',
      manufacturer: map['manufacturer'] ?? '',
    );
  }
  @override
  Map<String, dynamic> toMap() {
    return {
      'medicineName': medicineName,
      'quantityInStock': quantityInStock,
      'quantityPerPack': quantityPerPack,
      'packagingType': packagingType,
      'quantity': quantity,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'salt': salt,
      'manufacturer': manufacturer,
    };
  }

  @override
  String toJson() => json.encode(toMap());

  factory InventoryModel.fromJson(String source) =>
      InventoryModel.fromMap(json.decode(source));
}
