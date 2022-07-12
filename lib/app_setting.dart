import 'package:flutter/material.dart';
import 'dart:math' as math;


class AppSetting {
  String color = "Yellow";
  bool music = false;

  void setColor() {
    color = randomColor().toString();
  }

  void setMusic() {
    music = !music;
  }

  Color randomColor(){
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }
}
