import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'HELLO',
          style: AppStyles.bold30(context).copyWith(
            color: AppColors.primary,
          ),
        ),
        Text(
          'efhuuihiuhweiuhgiuhiuh\ndsggudsgugdudasuia',
          style: AppStyles.mediam16(context),
        ),
      ],
    );
  }
}
