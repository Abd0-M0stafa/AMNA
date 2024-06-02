import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login&regester_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginWith extends StatelessWidget {
  const LoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Or Login With',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginAndRegesterIcons(
              onTap: () {},
              icon: FontAwesomeIcons.google,
            ),
            const SizedBox(
              width: 8,
            ),
            LoginAndRegesterIcons(
              onTap: () {},
              icon: FontAwesomeIcons.facebook,
            ),
          ],
        )
      ],
    );
  }
}
