import 'package:cancer/features/auth/presentation/view/widgets/custttom_text_field.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatefulWidget {
  const EmailTextField({super.key});

  @override
  State<EmailTextField> createState() => _EmailTextFieldState();
}

class _EmailTextFieldState extends State<EmailTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      text: 'Enter your Email',
      // controller: controller,
      // validator: (value) {
      //   email = value;
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter your Email';
      //   } else if (RegExp(
      //           r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
      //       .hasMatch(value)) {
      //     return null;
      //   }
      //   return 'Invalid Email';
      // },
      // onChanged: (data) {
      //   email = data;
      // },
    );
  }
}
