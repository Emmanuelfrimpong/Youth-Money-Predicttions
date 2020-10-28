

import 'package:flutter/material.dart';

const SECONDARY = const Color(0xFFF50057);
const PRIMARY = const Color(0xFF4A0072);
const PRIMARY_TEXT = const Color(0xFFFFFFFF);
const SECOND_TEXT = const Color(0xFF000000);

TextStyle whiteBold() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: PRIMARY_TEXT,
  );
}

TextStyle blackBold() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    color: SECOND_TEXT,
  );
}