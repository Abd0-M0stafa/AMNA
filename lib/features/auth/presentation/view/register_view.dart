import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_first_section.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_second_section.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              RegisterFirstSection(),
              RegisterSecondSection(),
            ],
          ),
        ),
      ),
    );
  }
}
