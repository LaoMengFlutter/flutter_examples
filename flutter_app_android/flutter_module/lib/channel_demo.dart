import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

///
/// des:
///
class ChannelDemo {
  static final MethodChannel _channel = MethodChannel('channel_name');

  static test() async {
    var arguments = {'name': 'flutter', 'age': 16};
    var result = await _channel.invokeMethod('methond_name', arguments);
    print('$result');
  }
}
