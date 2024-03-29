import 'package:unihome/repositories/models/service.model.dart';

class InvoiceDetail {
  int? id;
  double? amount;
  int? invoiceId;
  int? serviceId;
  ServiceInInvoice? service;
  String? wildCardForFee;
  String? placeHolderForFee;

  InvoiceDetail.fromJson(dynamic json) {
    id =
        json['InvoiceDetailId'] == null ? null : json['InvoiceDetailId'] as int;
    invoiceId = json['InvoiceId'] == null ? null : json['InvoiceId'] as int;
    serviceId = json['ServiceId'] == null ? null : json['ServiceId'] as int;
    amount = json['Amount'] == null ? null : json['Amount'] as double;
    service = json['Service'] == null
        ? null
        : ServiceInInvoice.fromJson(json['Service']);
    wildCardForFee = json['WildcardIdForFee'] == null
        ? null
        : json['WildcardIdForFee'] as String;
    placeHolderForFee = json['PlaceholderForFee'] == null
        ? null
        : json['PlaceholderForFee'] as String;
  }
}
