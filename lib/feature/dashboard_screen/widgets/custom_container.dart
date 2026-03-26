// ignore_for_file: must_be_immutable

import 'package:ecommercedashboard/core/const/size_const.dart';
import 'package:ecommercedashboard/core/custom/package/screen_size/extension.dart';
import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:ecommercedashboard/feature/dashboard_screen/widgets/custom_line_chart_widget.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(SizeConst.borderRadius),
      child: Container(
        height: 140.h,
        width: 165.w,

        decoration: BoxDecoration(
          color: Theme.of(context).cardTheme.color,
          borderRadius: BorderRadius.circular(SizeConst.borderRadius),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              color: Theme.of(context).colorScheme.shadow,
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: -20,
              right: -20,
              child: Container(
                height: 70.w,
                width: 70.w,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
              ),
            ),

            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: context.colorScheme.inversePrimary.withAlpha(
                              60,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(Icons.mark_email_read),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: context.scColor.successBg,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "▼ 10.5%",
                            style: TextStyle(
                              color: context.scColor.successText,
                            ),
                          ),
                        ),
                      ],
                    ),

                    Column(children: [Text("data")]),
                    SizedBox(
                      width: double.infinity,
                      height: 90,

                      child: CustomLineChartWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
