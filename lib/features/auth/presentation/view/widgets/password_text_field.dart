import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/presentation/view/widgets/custttom_text_field.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isShown = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      // controller: controller2,

      obscureText: isShown,
      suffixIcon: isShown
          ? Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                color: const Color.fromARGB(255, 197, 192, 192),
                icon: const Icon(Icons.visibility_off),
                onPressed: () {
                  isShown = false;
                  setState(() {});
                },
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                color: AppColors.primary,
                icon: const Icon(Icons.visibility),
                onPressed: () {
                  isShown = true;
                  setState(() {});
                },
              ),
            ),

      // validator: (value) {
      //   password = value;
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter your Password';
      //   }
      //   if (value.length < 9) {
      //     return 'The minimum password length is 9';
      //   } else if (RegExp(
      //           r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
      //       .hasMatch(value)) {
      //     return null;
      //   }
      //   return 'Your password must contains Uppercase,\nLowercase, Special characters and Numbers';
      // },
      // onChanged: (data) {
      //   password = data;
      // },
      text: 'Enter your Password',
    );
  }
}
