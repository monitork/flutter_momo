import 'package:flutter/foundation.dart';

class MMPay {
  String partnerCode;
  String merchantname;
  String merchantnamelabel;
  String appScheme;
  String orderId;
  int amount;
  String orderLabel;
  String description;
  int fee;
  String username;
  String extra;

  MMPay({
    @required this.partnerCode,
    @required this.merchantname,
    this.merchantnamelabel,
    @required this.appScheme,
    @required this.orderId,
    @required this.amount,
    this.orderLabel,
    @required this.description,
    this.fee,
    this.username,
    this.extra,
  });
}
