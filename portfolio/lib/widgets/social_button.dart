import 'package:flutter/material.dart';
import 'package:portfolio/theme/values.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(
      //     ValueConstants.radius10Px(context),
      //   ),
      //   color: AppColors.black,
      // ),
      child: IconButton(
        onPressed: () {},
        icon: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn8fAlGJa8XvUzO1q33KujUSSadcXjQnxJ6A&s",
          height: ValueConstants.icon40Px(context),
          width: ValueConstants.icon40Px(context),
        ),
        // iconSize: ValueConstants.icon24Px(context),
      ),
    );
  }
}
