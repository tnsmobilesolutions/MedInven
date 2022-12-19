// ignore_for_file: prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:equatable/equatable.dart';

class SalesEntity extends Equatable {
  final String customerName;
  final int customerPhone;
  final String medicineName;
  final DateTime saleDate;
  final String doctorName;
  final String invoiceNumber;
  final String prescription;
  final int finalDiscount;
  final int totalProfit;
  final String comment;
  final int quantity;
  final int discount;
  final int mrp;
  final int gst;
  final String batchCode;
  final DateTime expiryDate;
  final String marginLeft;
  SalesEntity({
    required this.customerName,
    required this.customerPhone,
    required this.medicineName,
    required this.saleDate,
    required this.doctorName,
    required this.invoiceNumber,
    required this.prescription,
    required this.finalDiscount,
    required this.totalProfit,
    required this.comment,
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
      customerName,
      customerPhone,
      medicineName,
      saleDate,
      doctorName,
      invoiceNumber,
      prescription,
      finalDiscount,
      totalProfit,
      comment,
      quantity,
      discount,
      mrp,
      gst,
      batchCode,
      expiryDate,
      marginLeft,
    ];
  }

  SalesEntity copyWith({
    String? customerName,
    int? customerPhone,
    String? medicineName,
    DateTime? saleDate,
    String? doctorName,
    String? invoiceNumber,
    String? prescription,
    int? finalDiscount,
    int? totalProfit,
    String? comment,
    int? quantity,
    int? discount,
    int? mrp,
    int? gst,
    String? batchCode,
    DateTime? expiryDate,
    String? marginLeft,
  }) {
    return SalesEntity(
      customerName: customerName ?? this.customerName,
      customerPhone: customerPhone ?? this.customerPhone,
      medicineName: medicineName ?? this.medicineName,
      saleDate: saleDate ?? this.saleDate,
      doctorName: doctorName ?? this.doctorName,
      invoiceNumber: invoiceNumber ?? this.invoiceNumber,
      prescription: prescription ?? this.prescription,
      finalDiscount: finalDiscount ?? this.finalDiscount,
      totalProfit: totalProfit ?? this.totalProfit,
      comment: comment ?? this.comment,
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
      'customerName': customerName,
      'customerPhone': customerPhone,
      'medicineName': medicineName,
      'saleDate': saleDate.millisecondsSinceEpoch,
      'doctorName': doctorName,
      'invoiceNumber': invoiceNumber,
      'prescription': prescription,
      'finalDiscount': finalDiscount,
      'totalProfit': totalProfit,
      'comment': comment,
      'quantity': quantity,
      'discount': discount,
      'mrp': mrp,
      'gst': gst,
      'batchCode': batchCode,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'marginLeft': marginLeft,
    };
  }

  factory SalesEntity.fromMap(Map<String, dynamic> map) {
    return SalesEntity(
      customerName: map['customerName'] ?? '',
      customerPhone: map['customerPhone']?.toInt() ?? 0,
      medicineName: map['medicineName'] ?? '',
      saleDate: DateTime.fromMillisecondsSinceEpoch(map['saleDate']),
      doctorName: map['doctorName'] ?? '',
      invoiceNumber: map['invoiceNumber'] ?? '',
      prescription: map['prescription'] ?? '',
      finalDiscount: map['finalDiscount']?.toInt() ?? 0,
      totalProfit: map['totalProfit']?.toInt() ?? 0,
      comment: map['comment'] ?? '',
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

  factory SalesEntity.fromJson(String source) =>
      SalesEntity.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SalesEntity(customerName: $customerName, customerPhone: $customerPhone, medicineName: $medicineName, saleDate: $saleDate, doctorName: $doctorName, invoiceNumber: $invoiceNumber, prescription: $prescription, finalDiscount: $finalDiscount, totalProfit: $totalProfit, comment: $comment, quantity: $quantity, discount: $discount, mrp: $mrp, gst: $gst, batchCode: $batchCode, expiryDate: $expiryDate, marginLeft: $marginLeft)';
  }
}
