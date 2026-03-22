import 'package:ecommercedashboard/core/custom/package/screen_size/ScreenInherit.dart';
import 'package:ecommercedashboard/core/custom/package/screen_size/screen_util.dart';
import 'package:flutter/material.dart';

typedef builder = Function(BuildContext context);

class Screen extends StatelessWidget {
  final builder screenBuilder;
  final Size screenSize;
  const Screen({
    super.key,
    required this.screenBuilder,
    this.screenSize = ScreenUtil.defaultScreenSize,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final deviseSize = MediaQuery.of(context).size;

        ScreenUtil.init(
          screenSize: screenSize,
          deviseSize: deviseSize,
          orientation: orientation,
        );

        return Screeninherit(child: screenBuilder(context));
      },
    );
  }
}
