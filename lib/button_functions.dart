import 'package:flutter/material.dart';

var malecolor = inactivecardcolor;
var femalecolor = inactivecardcolor;

var activecardcolor = Color(0xB0959595);
var inactivecardcolor = const Color(0x62959595);

void gendercolor(int gender) {
  if (gender == 1) {
    if (malecolor == inactivecardcolor) {
      malecolor = activecardcolor;
      femalecolor = inactivecardcolor;
    } else {
      malecolor = inactivecardcolor;
    }
  }
  if (gender == 2) {
    if (femalecolor == inactivecardcolor) {
      femalecolor = activecardcolor;
      malecolor = inactivecardcolor;
    } else {
      femalecolor = inactivecardcolor;
    }
  }
}
