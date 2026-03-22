import 'package:flutter/material.dart';

class ScreenUtil {
  static const Size defaultScreenSize = Size(360, 690);
  static late double _screenwidth;
  static late double _screenheight;
  static late Orientation _orientation;
  static void init({
    required Size screenSize,
    required Size deviseSize,
    required Orientation orientation,
  }) {
    _screenwidth = deviseSize.width / screenSize.width;
    _screenheight = deviseSize.height / screenSize.height;
    _orientation = orientation;
  }

  static double h(num v) => v * _screenheight;
  static double w(num v) => v * _screenwidth;
  static double mxw(num v, {required double min, required double max}) =>
      (v * _screenwidth).clamp(min, max);
  static double mxh(num v, {required double min, required double max}) =>
      (v * _screenwidth).clamp(min, max);

  static bool isPortrait = _orientation == Orientation.portrait;
}
