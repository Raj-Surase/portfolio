import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/values.dart';
import 'package:portfolio/theme/widgets.dart';

class CustomContainer extends StatefulWidget {
  Widget content;
  CustomContainer({required this.content, super.key});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ValueConstants.screenHeight(context),
      margin: EdgeInsets.fromLTRB(
        0,
        0,
        ValueConstants.padding40Px(context),
        ValueConstants.padding40Px(context),
      ),
      decoration: BoxDecoration(
        boxShadow: [WidgetConstants.shadowEffect],
        color: AppColors.white,
        border: WidgetConstants.containerBorder,
        borderRadius: BorderRadius.circular(ValueConstants.radius20Px(context)),
      ),
      child: widget,
    );
  }
}
