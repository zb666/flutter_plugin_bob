import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginBob {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_bob');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
