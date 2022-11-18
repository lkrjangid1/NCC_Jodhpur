import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#7a7d7f');

  static Color gray700 = fromHex('#575f6e');

  static Color bluegray50 = fromHex('#f0f2f4');

  static Color gray400 = fromHex('#c0c0c0');

  static Color gray500 = fromHex('#999999');

  static Color gray900 = fromHex('#242426');

  static Color gray300 = fromHex('#e2e4e5');

  static Color blue50 = fromHex('#eff1ff');

  static Color bluegray800 = fromHex('#2e3e5c');

  static Color black900 = fromHex('#000000');

  static Color bluegray10000 = fromHex('#00d9d9d9');

  static Color bluegray400 = fromHex('#888888');

  static Color lightBlueA700 = fromHex('#007aff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
