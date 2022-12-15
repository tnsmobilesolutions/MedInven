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

  PurchaseEntity copyWith({
    String? medicineName,
    String? packageType,
    int? quantityPerPack,
    String? unit,
    String? batchCode,
    int? quantity,
    DateTime? expiryDate,
    int? gst,
    int? finalRatePerPack,
    int? mrpPerPack,
    String? manufacturer,
  }) {
    return PurchaseEntity(
      medicineName: medicineName ?? this.medicineName,
      packageType: packageType ?? this.packageType,
      quantityPerPack: quantityPerPack ?? this.quantityPerPack,
      unit: unit ?? this.unit,
      batchCode: batchCode ?? this.batchCode,
      quantity: quantity ?? this.quantity,
      expiryDate: expiryDate ?? this.expiryDate,
      gst: gst ?? this.gst,
      finalRatePerPack: finalRatePerPack ?? this.finalRatePerPack,
      mrpPerPack: mrpPerPack ?? this.mrpPerPack,
      manufacturer: manufacturer ?? this.manufacturer,
    );
  }

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

  factory PurchaseEntity.fromMap(Map<String, dynamic> map) {
    return PurchaseEntity(
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
    );
  }

  String toJson() => json.encode(toMap());

  factory PurchaseEntity.fromJson(String source) =>
      PurchaseEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PurchaseEntity(medicineName: $medicineName, packageType: $packageType, quantityPerPack: $quantityPerPack, unit: $unit, batchCode: $batchCode, quantity: $quantity, expiryDate: $expiryDate, gst: $gst, finalRatePerPack: $finalRatePerPack, mrpPerPack: $mrpPerPack, manufacturer: $manufacturer)';
  }

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
