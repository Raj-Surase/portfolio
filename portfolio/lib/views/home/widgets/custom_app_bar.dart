import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/typography.dart';
import 'package:portfolio/theme/values.dart';
import 'package:portfolio/theme/widgets.dart';
import 'package:portfolio/views/home/home_view_model.dart';

class CustomAppBar extends StatefulWidget {
  final HomeViewModel viewModel;

  CustomAppBar({
    required this.viewModel,
    super.key,
  });

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        0,
        ValueConstants.padding30Px(context),
        ValueConstants.padding40Px(context),
        ValueConstants.padding20Px(context),
      ),
      child: Row(
        children: [
          Expanded(
            child: AppBarTab(
              title: "Projects",
              isActive: widget.viewModel.activeIndex == 0,
              isFirst: true,
              onTap: () => widget.viewModel.setActiveTab(0),
            ),
          ),
          Expanded(
            child: AppBarTab(
              title: "Resume",
              isActive: widget.viewModel.activeIndex == 1,
              isMid: true,
              onTap: () => widget.viewModel.setActiveTab(1),
            ),
          ),
          Expanded(
            child: AppBarTab(
              title: "Contact",
              isActive: widget.viewModel.activeIndex == 2,
              isLast: true,
              onTap: () => widget.viewModel.setActiveTab(2),
            ),
          ),
        ],
      ),
    );
  }
}

class AppBarTab extends StatelessWidget {
  final String title;
  final bool isFirst, isLast, isMid, isActive;
  final VoidCallback onTap;

  AppBarTab({
    required this.title,
    this.isFirst = false,
    this.isLast = false,
    this.isMid = false,
    this.isActive = false,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
        height: 80,
        margin:
            EdgeInsets.only(top: isActive ? 3 : 0, bottom: !isActive ? 3 : 0),
        decoration: BoxDecoration(
          boxShadow: [WidgetConstants.shadowEffect],
          color: isActive ? AppColors.yellow : AppColors.white,
          border: WidgetConstants.containerBorder,
          borderRadius: isFirst
              ? BorderRadius.only(
                  topLeft: Radius.circular(
                    ValueConstants.radius20Px(context),
                  ),
                  bottomLeft: Radius.circular(
                    ValueConstants.radius20Px(context),
                  ),
                )
              : isLast
                  ? BorderRadius.only(
                      topRight: Radius.circular(
                        ValueConstants.radius20Px(context),
                      ),
                      bottomRight: Radius.circular(
                        ValueConstants.radius20Px(context),
                      ),
                    )
                  : BorderRadius.circular(0),
        ),
        child: Center(
          child: Text(
            title,
            style: AppTextStyle.titleSmallMediumTitle,
          ),
        ),
      ),
    );
  }
}
