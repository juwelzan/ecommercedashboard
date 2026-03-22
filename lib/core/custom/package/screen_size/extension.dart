// ignore_for_file: camel_case_extensions

import 'package:ecommercedashboard/core/custom/package/screen_size/screen_util.dart';

extension screensize on num {
  double get h => ScreenUtil.h(this);
  double get w => ScreenUtil.w(this);
  double mxw({required double min, max}) =>
      ScreenUtil.mxw(this, min: min, max: max);
  double mxh({required double min, max}) =>
      ScreenUtil.mxh(this, min: min, max: max);
}
