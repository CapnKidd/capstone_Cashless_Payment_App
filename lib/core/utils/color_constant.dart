import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA70099 = fromHex('#99ffffff');

  static Color greenA700 = fromHex('#09b636');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
