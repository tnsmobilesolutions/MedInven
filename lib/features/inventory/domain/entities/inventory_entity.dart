// ignore_for_file: prefer_const_constructors_in_immutables

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
}
