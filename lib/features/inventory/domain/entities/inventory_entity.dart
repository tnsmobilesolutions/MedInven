// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class InventoryEntity extends Equatable {
  final String medicineName;
  final int quantityInStock;
  final int quantityPerPack;
  final String packagingType;
  final int quantity;
  final DateTime expiryDate;
  final String salt;
  final String manufacturer;
  InventoryEntity({
    required this.medicineName,
    required this.quantityInStock,
    required this.quantityPerPack,
    required this.packagingType,
    required this.quantity,
    required this.expiryDate,
    required this.salt,
    required this.manufacturer,
  });

  @override
  List<Object> get props {
    return [
      medicineName,
      quantityInStock,
      quantityPerPack,
      packagingType,
      quantity,
      expiryDate,
      salt,
      manufacturer,
    ];
  }

  InventoryEntity copyWith({
    String? medicineName,
    int? quantityInStock,
    int? quantityPerPack,
    String? packagingType,
    int? quantity,
    DateTime? expiryDate,
    String? salt,
    String? manufacturer,
  }) {
    return InventoryEntity(
      medicineName: medicineName ?? this.medicineName,
      quantityInStock: quantityInStock ?? this.quantityInStock,
      quantityPerPack: quantityPerPack ?? this.quantityPerPack,
      packagingType: packagingType ?? this.packagingType,
      quantity: quantity ?? this.quantity,
      expiryDate: expiryDate ?? this.expiryDate,
      salt: salt ?? this.salt,
      manufacturer: manufacturer ?? this.manufacturer,
    );
  }

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

  factory InventoryEntity.fromMap(Map<String, dynamic> map) {
    return InventoryEntity(
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

  String toJson() => json.encode(toMap());

  factory InventoryEntity.fromJson(String source) =>
      InventoryEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'InventoryEntity(medicineName: $medicineName, quantityInStock: $quantityInStock, quantityPerPack: $quantityPerPack, packagingType: $packagingType, quantity: $quantity, expiryDate: $expiryDate, salt: $salt, manufacturer: $manufacturer)';
  }
}
