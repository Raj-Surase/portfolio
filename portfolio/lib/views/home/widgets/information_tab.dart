import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/typography.dart';
import 'package:portfolio/theme/values.dart';
import 'package:portfolio/theme/widgets.dart';
import 'package:portfolio/widgets/social_button.dart';

class InformationTab extends StatelessWidget {
  const InformationTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // width: ValueConstants.screenWidth(context) * 0.30,
        // height: ValueConstants.screenHeight(context),
        margin: EdgeInsets.fromLTRB(
          ValueConstants.padding40Px(context),
          ValueConstants.padding30Px(context),
          0,
          ValueConstants.padding40Px(context),
        ),
        decoration: BoxDecoration(
          boxShadow: [WidgetConstants.shadowEffect],
          color: AppColors.white,
          border: WidgetConstants.containerBorder,
          borderRadius:
              BorderRadius.circular(ValueConstants.radius20Px(context)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: ValueConstants.space32Px(context),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  ValueConstants.radius16Px(context),
                ),
                border: WidgetConstants.containerBorder,
                boxShadow: [WidgetConstants.shadowEffect],
                color: AppColors.white,
                // image: DecorationImage(
                //   image: AssetImage(
                //     'assets/profile_pic.png',
                //   ),
                // ),
              ),
              child: Container(
                height: 200,
                width: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    ValueConstants.radius16Px(context),
                  ),
                  color: AppColors.yellow,
                ),
              ),
            ),
            SizedBox(
              height: ValueConstants.space10Px(context),
            ),
            Text(
              'Raj Surase',
              style: AppTextStyle.titleSmallMediumTitle,
            ),
            // SizedBox(
            //   height: ValueConstants.space8Px(context),
            // ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: ValueConstants.screenWidth(context) * 0.2,
                child: Text(
                  'A Flutter Developer and UI/UX Designer with a passion for innovation and a drive to explore new technologies. Always eager to push the boundaries of creativity and functionality!',
                  style: AppTextStyle.contentSmallContent,
                  overflow: TextOverflow.clip,
                ),
              ),
            ),
            SizedBox(
              height: ValueConstants.space10Px(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialButton(),
                SocialButton(),
                SocialButton(),
                SocialButton(),
              ],
            ),
            SizedBox(
              height: ValueConstants.space32Px(context),
            ),
          ],
        ),
      ),
    );
  }
}
