import 'package:ecommercedashboard/core/const/size_const.dart';
import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class ShareContainer extends StatelessWidget {
  /// [isSliver] == [true] ? [Sliver] : [Normal]
  final double? height, width;
  final Widget? child;
  final Color? color;
  final bool isSliver;
  final EdgeInsetsGeometry? padding;
  const ShareContainer({
    super.key,
    this.height,
    this.width,
    this.child,
    this.color,
    this.isSliver = false,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return isSliver
        ? SliverToBoxAdapter(
            child: Padding(
              padding: padding ?? const EdgeInsets.all(0),
              child: Container(
                height: height ?? 100,
                width: width ?? double.infinity,
                padding: EdgeInsets.all(SizeConst.padding5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(SizeConst.borderRadius),
                  color: color ?? context.colorScheme.surfaceContainer,
                ),
                child: child,
              ),
            ),
          )
        : Padding(
            padding: padding ?? const EdgeInsets.all(0),
            child: Container(
              height: height ?? 100,
              width: width ?? double.infinity,
              padding: EdgeInsets.all(SizeConst.padding5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(SizeConst.borderRadius),
                color: color ?? context.colorScheme.surfaceContainer,
              ),
              child: child,
            ),
          );
  }
}
