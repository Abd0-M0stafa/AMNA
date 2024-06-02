import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/regester_view.dart';
import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key, required this.question, required this.button});
  final String question;
  final String button;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: TextStyle(
            color: AppColors.primary,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const RegesterView(),
              ),
            );
          },
          child: Text(
            button,
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
