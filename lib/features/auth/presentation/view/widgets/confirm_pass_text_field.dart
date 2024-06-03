import 'package:cancer/features/auth/presentation/view/widgets/custttom_text_field.dart';
import 'package:flutter/material.dart';

class ConfirmPassTextField extends StatefulWidget {
  const ConfirmPassTextField({super.key});

  @override
  State<ConfirmPassTextField> createState() => _ConfirmPassTextFieldState();
}

class _ConfirmPassTextFieldState extends State<ConfirmPassTextField> {
  bool isShown2 = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      obscureText: isShown2,
      suffixIcon: isShown2
          ? Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                color: const Color.fromARGB(255, 197, 192, 192),
                icon: const Icon(Icons.visibility_off),
                onPressed: () {
                  isShown2 = false;
                  setState(() {});
                },
              ),
            )
          : Padding(
              padding: const EdgeInsets.only(right: 5),
              child: IconButton(
                color: const Color.fromARGB(255, 28, 228, 167),
                icon: const Icon(Icons.visibility),
                onPressed: () {
                  isShown2 = true;
                  setState(() {});
                },
              ),
            ),
      // controller: controller3,
      // validator: (value) {
      //   password = value;
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter the Password to confirm';
      //   } else if (value != controller2.text) {
      //     return 'Not Matching password';
      //   }
      //   return null;
      // },
      onChanged: (data) {},
      text: 'Confirm your Password',
    );
  }
}
