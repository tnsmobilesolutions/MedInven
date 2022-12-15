import 'dart:convert';

import 'package:equatable/equatable.dart';

class PurchaseEntity extends Equatable {
  final String medicineName;
  final String packageType;
  final int quantityPerPack;
  final String unit;
  final String batchCode;
  final int quantity;
  final DateTime expiryDate;
  final int gst;
  final int finalRatePerPack;
  final int mrpPerPack;
  final String manufacturer;
  PurchaseEntity({
    required this.medicineName,
    required this.packageType,
    required this.quantityPerPack,
    required this.unit,
    required this.batchCode,
    required this.quantity,
    required this.expiryDate,
    required this.gst,
    required this.finalRatePerPack,
    required this.mrpPerPack,
    required this.manufacturer,
  });

  @override
  List<Object> get props {
    return [
      medicineName,
      packageType,
      quantityPerPack,
      unit,
      batchCode,
      quantity,
      expiryDate,
      gst,
      finalRatePerPack,
      mrpPerPack,
      manufacturer,
    ];
  }
}
