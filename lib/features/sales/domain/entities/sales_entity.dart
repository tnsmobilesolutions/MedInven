// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class SalesEntity extends Equatable {
  final String medicineName;
  final int quantity;
  final int discount;
  final int mrp;
  final int gst;
  final String batchCode;
  final DateTime expiryDate;
  final String marginLeft;
  SalesEntity({
    required this.medicineName,
    required this.quantity,
    required this.discount,
    required this.mrp,
    required this.gst,
    required this.batchCode,
    required this.expiryDate,
    required this.marginLeft,
  });

  @override
  List<Object> get props {
    return [
      medicineName,
      quantity,
      discount,
      mrp,
      gst,
      batchCode,
      expiryDate,
      marginLeft,
    ];
  }
}
