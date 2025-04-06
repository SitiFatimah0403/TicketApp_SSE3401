import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyle {
  static Color primaryColur = primary;
  static Color textColour = const Color(0xFF3b3b3b);

  static TextStyle headLineStyle1 = TextStyle( // sini tak leh letak const sbb color tu dynamic, can be changed any time
    fontSize: 26,
    fontWeight: FontWeight.w500,
    color: AppStyle.textColour,
  );
  static TextStyle headLineStyle2 = const TextStyle(  //sini ada const sbb anak dia static 
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );
}
