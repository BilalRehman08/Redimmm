import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xff25BAFB);
  static const lightBlue = Color(0xffE5F8FF);
  static const secondaryColor = Color(0xff25FB94);
  static const greyColor = Color(0xff979797);
  static const blackHeading = Color(0xff262626);
  static const lightBlack = Color(0xff5B5B5B);
  static const Map<int, Color> color = {
    50: Color.fromRGBO(37, 186, 251, .1),
    100: Color.fromRGBO(37, 186, 251, .2),
    200: Color.fromRGBO(37, 186, 251, .3),
    300: Color.fromRGBO(37, 186, 251, .4),
    400: Color.fromRGBO(37, 186, 251, .5),
    500: Color.fromRGBO(37, 186, 251, .6),
    600: Color.fromRGBO(37, 186, 251, .7),
    700: Color.fromRGBO(37, 186, 251, .8),
    800: Color.fromRGBO(37, 186, 251, .9),
    900: Color.fromRGBO(37, 186, 251, 1),
  };
  static MaterialColor customPrimaryColor =
      const MaterialColor(0xff25BAFB, color);
}
