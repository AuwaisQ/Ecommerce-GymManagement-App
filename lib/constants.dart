import 'package:flutter/cupertino.dart';

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

final backgroundColor = Color(hexColor('#26272B'));

///Green Coolour
final primaryColor = Color(hexColor('#48E471'));

const primaryfont = 'Poppins';
