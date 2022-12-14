// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class Sales extends Equatable {
  final String medicineName;
  final int quantity;
  final int discount;
  final int mrp;
  final int gst;
  final String batchCode;
  final DateTime expiryDate;
  final String marginLeft;
  Sales({
    required this.medicineName,
    required this.quantity,
    required this.discount,
    required this.mrp,
    required this.gst,
    required this.batchCode,
    required this.expiryDate,
    required this.marginLeft,
  });

  Sales copyWith({
    String? medicineName,
    int? quantity,
    int? discount,
    int? mrp,
    int? gst,
    String? batchCode,
    DateTime? expiryDate,
    String? marginLeft,
  }) {
    return Sales(
      medicineName: medicineName ?? this.medicineName,
      quantity: quantity ?? this.quantity,
      discount: discount ?? this.discount,
      mrp: mrp ?? this.mrp,
      gst: gst ?? this.gst,
      batchCode: batchCode ?? this.batchCode,
      expiryDate: expiryDate ?? this.expiryDate,
      marginLeft: marginLeft ?? this.marginLeft,
    );
  }

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

  factory Sales.fromMap(Map<String, dynamic> map) {
    return Sales(
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

  String toJson() => json.encode(toMap());

  factory Sales.fromJson(String source) => Sales.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Sales(medicineName: $medicineName, quantity: $quantity, discount: $discount, mrp: $mrp, gst: $gst, batchCode: $batchCode, expiryDate: $expiryDate, marginLeft: $marginLeft)';
  }

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
