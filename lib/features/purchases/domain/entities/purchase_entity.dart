// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class PurchaseEntity extends Equatable {
  final String distributorName;
  final int phoneNumber;
  final int gst;
  final DateTime purchaseDate;
  final String medicineName;
  final String packageType;
  final int quantityPerPack;
  final String unit;
  final String batchCode;
  final int quantity;
  final DateTime expiryDate;

  final int finalRatePerPack;
  final int mrpPerPack;
  final String manufacturer;
  PurchaseEntity({
    required this.distributorName,
    required this.phoneNumber,
    required this.gst,
    required this.purchaseDate,
    required this.medicineName,
    required this.packageType,
    required this.quantityPerPack,
    required this.unit,
    required this.batchCode,
    required this.quantity,
    required this.expiryDate,
    required this.finalRatePerPack,
    required this.mrpPerPack,
    required this.manufacturer,
  });

  @override
  List<Object> get props {
    return [
      distributorName,
      phoneNumber,
      gst,
      purchaseDate,
      medicineName,
      packageType,
      quantityPerPack,
      unit,
      batchCode,
      quantity,
      expiryDate,
      finalRatePerPack,
      mrpPerPack,
      manufacturer,
    ];
  }

  PurchaseEntity copyWith({
    String? distributorName,
    int? phoneNumber,
    int? gst,
    DateTime? purchaseDate,
    String? medicineName,
    String? packageType,
    int? quantityPerPack,
    String? unit,
    String? batchCode,
    int? quantity,
    DateTime? expiryDate,
    int? finalRatePerPack,
    int? mrpPerPack,
    String? manufacturer,
  }) {
    return PurchaseEntity(
      distributorName: distributorName ?? this.distributorName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      gst: gst ?? this.gst,
      purchaseDate: purchaseDate ?? this.purchaseDate,
      medicineName: medicineName ?? this.medicineName,
      packageType: packageType ?? this.packageType,
      quantityPerPack: quantityPerPack ?? this.quantityPerPack,
      unit: unit ?? this.unit,
      batchCode: batchCode ?? this.batchCode,
      quantity: quantity ?? this.quantity,
      expiryDate: expiryDate ?? this.expiryDate,
      finalRatePerPack: finalRatePerPack ?? this.finalRatePerPack,
      mrpPerPack: mrpPerPack ?? this.mrpPerPack,
      manufacturer: manufacturer ?? this.manufacturer,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'distributorName': distributorName,
      'phoneNumber': phoneNumber,
      'gst': gst,
      'purchaseDate': purchaseDate.millisecondsSinceEpoch,
      'medicineName': medicineName,
      'packageType': packageType,
      'quantityPerPack': quantityPerPack,
      'unit': unit,
      'batchCode': batchCode,
      'quantity': quantity,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'finalRatePerPack': finalRatePerPack,
      'mrpPerPack': mrpPerPack,
      'manufacturer': manufacturer,
    };
  }

  factory PurchaseEntity.fromMap(Map<String, dynamic> map) {
    return PurchaseEntity(
      distributorName: map['distributorName'] ?? '',
      phoneNumber: map['phoneNumber']?.toInt() ?? 0,
      gst: map['gst']?.toInt() ?? 0,
      purchaseDate: DateTime.fromMillisecondsSinceEpoch(map['purchaseDate']),
      medicineName: map['medicineName'] ?? '',
      packageType: map['packageType'] ?? '',
      quantityPerPack: map['quantityPerPack']?.toInt() ?? 0,
      unit: map['unit'] ?? '',
      batchCode: map['batchCode'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      expiryDate: DateTime.fromMillisecondsSinceEpoch(map['expiryDate']),
      finalRatePerPack: map['finalRatePerPack']?.toInt() ?? 0,
      mrpPerPack: map['mrpPerPack']?.toInt() ?? 0,
      manufacturer: map['manufacturer'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PurchaseEntity.fromJson(String source) =>
      PurchaseEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PurchaseEntity(distributorName: $distributorName, phoneNumber: $phoneNumber, gst: $gst, purchaseDate: $purchaseDate, medicineName: $medicineName, packageType: $packageType, quantityPerPack: $quantityPerPack, unit: $unit, batchCode: $batchCode, quantity: $quantity, expiryDate: $expiryDate, finalRatePerPack: $finalRatePerPack, mrpPerPack: $mrpPerPack, manufacturer: $manufacturer)';
  }
}
