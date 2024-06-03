import 'package:cancer/features/auth/presentation/view/register_view.dart';
import 'package:cancer/features/auth/presentation/view/widgets/email_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login_button.dart';
import 'package:cancer/features/auth/presentation/view/widgets/login_with.dart';
import 'package:cancer/features/auth/presentation/view/widgets/password_text_field.dart';
import 'package:cancer/features/auth/presentation/view/widgets/reminder.dart';
import 'package:flutter/material.dart';

class LoginSecondSection extends StatefulWidget {
  const LoginSecondSection({super.key});

  @override
  State<LoginSecondSection> createState() => _LoginSecondSectionState();
}

class _LoginSecondSectionState extends State<LoginSecondSection> {
  String? email;
  String? pass;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          EmailTextField(
            onChanged: (data) {
              email = data;
            },
            validator: (value) {
              return emailValidator(value);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          PasswordTextField(
            onChanged: (data) {
              pass = data;
            },
            validator: (value) {
              return passValidator(value);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          LoginButton(
            globalKey: formKey,
            email: email,
            pass: pass,
          ),
          const SizedBox(
            height: 4,
          ),
          Reminder(
            question: 'Do Not Have an Account?',
            button: 'Register',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const RegisterView(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 15,
          ),
          LoginWith(),
          const SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }

  String? passValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Password';
    }
    if (value.length < 9) {
      return 'The minimum password length is 9';
    } else if (RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(value)) {
      return null;
    }
    return 'Your password must contains Uppercase,\nLowercase, Special characters and Numbers';
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your Email';
    } else if (RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value)) {
      return null;
    }
    return 'Invalid Email';
  }
}
