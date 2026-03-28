import 'package:ecommercedashboard/core/extension/context_extension.dart';
import 'package:ecommercedashboard/feature/main_screen/widgets/bottom_navigation_bar_item.dart';
import 'package:flutter/material.dart';

typedef OnTapcall = Function(int pageIndex);

class CustomBottomnavigationbar extends StatefulWidget {
  final OnTapcall? onTap;
  final Color? activColor, inActivColor;
  final List<Item>? navItem;
  const CustomBottomnavigationbar({
    super.key,
    this.onTap,
    this.activColor,
    this.inActivColor,
    this.navItem,
  });

  @override
  State<CustomBottomnavigationbar> createState() =>
      _CustomBottomnavigationbarState();
}

class _CustomBottomnavigationbarState extends State<CustomBottomnavigationbar>
    with AutomaticKeepAliveClientMixin {
  int pindex = 0;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Container(
      height: 70,

      decoration: BoxDecoration(color: context.colorScheme.surface),

      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            widget.navItem != null ? widget.navItem!.length : 0,
            (index) {
              return bottomNavigationBarItem(
                activColor: widget.activColor,
                inActivColor: widget.inActivColor,
                isActiv: pindex == index,
                icon: widget.navItem![index].icon,
                label: widget.navItem![index].label,
                onTap: () {
                  widget.onTap?.call(index);
                  indexUpdate(index);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  void indexUpdate(int i) {
    setState(() => pindex = i);
  }

  @override
  bool get wantKeepAlive => true;
}

class Item {
  final Widget icon;
  final String? label;
  Item({required this.icon, this.label});
}
