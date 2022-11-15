// ignore_for_file: prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings

import 'package:flutter/animation.dart';

Color colorConvert(String color) {
  color = color.replaceAll("#", "");
  var converted;
  if (color.length == 6) {
    converted = Color(int.parse("0xFF" + color));
  } else if (color.length == 8) {
    converted = Color(int.parse("0x" + color));
  }
  return converted;
}