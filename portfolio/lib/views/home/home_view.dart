library home_view;

import 'package:portfolio/data/text_constants.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/typography.dart';
import 'package:portfolio/theme/values.dart';
import 'package:portfolio/theme/widgets.dart';
import 'package:portfolio/views/home/widgets/custom_app_bar.dart';
import 'package:portfolio/views/home/widgets/information_tab.dart';
import 'package:portfolio/widgets/social_button.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

part 'home_mobile.dart';
part 'home_tablet.dart';
part 'home_desktop.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = HomeViewModel();
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onViewModelReady: (viewModel) {
          viewModel.initialise(context);
        },
        builder: (context, viewModel, child) {
          return ResponsiveBuilder(
            builder: (context, sizingInformation) {
              // Check the sizing information here and return your UI
              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.desktop) {
                return _HomeDesktop(viewModel);
              }

              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.tablet) {
                return _HomeTablet(viewModel);
              }

              if (sizingInformation.deviceScreenType ==
                  DeviceScreenType.mobile) {
                return _HomeMobile(viewModel);
              }

              return _HomeMobile(viewModel);
            },
            // },
          );
        });
  }
}
