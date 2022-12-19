import 'dart:convert';
import 'package:medinven/features/sales/domain/entities/sales_entity.dart';

class SalesModel extends SalesEntity {
  SalesModel({
    required customerName,
    required customerPhone,
    required medicineName,
    required saleDate,
    required doctorName,
    required invoiceNumber,
    required prescription,
    required finalDiscount,
    required totalProfit,
    required comment,
    required quantity,
    required discount,
    required mrp,
    required gst,
    required batchCode,
    required expiryDate,
    required marginLeft,
  }) : super(
          batchCode: batchCode,
          discount: discount,
          expiryDate: expiryDate,
          gst: gst,
          marginLeft: marginLeft,
          medicineName: medicineName,
          mrp: mrp,
          quantity: quantity,
          comment: comment,
          customerName: customerName,
          customerPhone: customerPhone,
          doctorName: doctorName,
          finalDiscount: finalDiscount,
          invoiceNumber: invoiceNumber,
          prescription: prescription,
          saleDate: saleDate,
          totalProfit: totalProfit,
        );
  @override
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

  factory SalesModel.fromMap(Map<String, dynamic> map) {
    return SalesModel(
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

  @override
  String toJson() => json.encode(toMap());

  factory SalesModel.fromJson(String source) =>
      SalesModel.fromMap(json.decode(source));
}
