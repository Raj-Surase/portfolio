import 'package:flutter/material.dart';
import 'package:portfolio/styles/apptheme.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButton extends StatelessWidget {
  SocialButton({required this.icon, required this.link, super.key});

  String icon;
  String link;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Image.asset(
        icon,
        height: AppTheme.isLargeScreen(context) ? 36 : 24,
        width: AppTheme.isLargeScreen(context) ? 36 : 24,
      ),
      onPressed: () => launch(link),
    );
  }
}
