import 'package:flutter/material.dart';

Color chooseColor(bool theme, List colors) {
  return theme ? colors[0] : colors[1];
}
