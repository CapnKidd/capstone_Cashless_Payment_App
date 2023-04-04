import 'package:flutter/material.dart';
import 'package:rapaid/core/app_export.dart';

class AppStyle {
  static TextStyle txtMontserratRomanMedium20 = TextStyle(
    color: ColorConstant.whiteA70099,
    fontSize: getFontSize(
      20,
    ),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle txtMontserratRomanBold40 = TextStyle(
    color: ColorConstant.whiteA700,
    fontSize: getFontSize(
      40,
    ),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
}
