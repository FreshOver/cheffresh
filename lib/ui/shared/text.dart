import 'package:flutter/material.dart';

FittedBox responsiveText(String text,
    {double textSize, FontWeight fontWeight, String fontFamily}) {
  return FittedBox(
    fit: BoxFit.contain,
    child: Text(
      text,
      style: TextStyle(
          fontWeight: fontWeight, fontFamily: fontFamily, fontSize: textSize),
    ),
  );
}
