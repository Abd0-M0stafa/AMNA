import 'package:cancer/features/auth/presentation/view/login_view.dart';
import 'package:cancer/features/auth/presentation/view/widgets/confirm_pass_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/email_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/password_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_button.dart';
import 'package:cancer/features/auth/presentation/view/widgets/register_with.dart';
import 'package:cancer/features/auth/presentation/view/widgets/reminder.dart';
import 'package:flutter/material.dart';

class RegisterSecondSection extends StatelessWidget {
  const RegisterSecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // EmailTextField(),
        // const SizedBox(
        //   height: 15,
        // ),
        // PasswordTextField(),
        // const SizedBox(
        //   height: 15,
        // ),
        ConfirmPassTextField(),
        const SizedBox(
          height: 20,
        ),
        RegisterButton(),
        const SizedBox(
          height: 4,
        ),
        Reminder(
          question: 'Already Have an Account?',
          button: 'Login',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const LoginView(),
              ),
            );
          },
        ),
        const SizedBox(
          height: 15,
        ),
        RegisterWith(),
        const SizedBox(
          height: 25,
        ),
      ],
    );
  }
}
