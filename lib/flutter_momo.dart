import 'dart:async';

import 'package:flutter/services.dart';

class FlutterMomo {
  static const MethodChannel _channel =
      const MethodChannel('flutter_momo');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<Null> showToast(String msg) async{
    await _channel.invokeMethod('showToast');
    return null;
  }
}
