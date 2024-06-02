import 'package:cancer/features/auth/presentation/view/widgets/email_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login_button.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login_with.dart';
import 'package:cancer/features/auth/presentation/view/widgets/password_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/reminder.dart';
import 'package:flutter/material.dart';

class LoginSecondSection extends StatelessWidget {
  const LoginSecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EmailTextField(),
        const SizedBox(
          height: 15,
        ),
        PasswordTextField(),
        const SizedBox(
          height: 20,
        ),
        LoginButton(),
        const SizedBox(
          height: 4,
        ),
        Reminder(
          question: 'Do Not Have an Account?',
          button: 'Regester',
        ),
        const SizedBox(
          height: 15,
        ),
        LoginWith(),
      ],
    );
  }
}
