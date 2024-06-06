import 'package:cancer/core/helper/snake_bar.dart';
import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/auth/data/models/register_request_model.dart';
import 'package:cancer/features/auth/presentation/view_model/register_cubit/register_cubit.dart';
import 'package:cancer/features/auth/presentation/view_model/register_cubit/register_states.dart';
import 'package:cancer/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
    required this.globalKey,
    this.email,
    this.pass,
    required this.controller,
    this.confirmPass,
  });

  final String? email;
  final String? pass;
  final String? confirmPass;
  final GlobalKey<FormState> globalKey;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterStateFailure) {
          customSnakeBar(context, text: state.errMessage);
        } else if (state is RegisterStateSuccess) {
          navToHome(context);
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
            ),
            onPressed: (state is RegisterStateLoading)
                ? () {}
                : () async {
                    if (globalKey.currentState!.validate()) {
                      RegisterRequestModel register = RegisterRequestModel(
                          name: 'name',
                          email: email!,
                          password: pass!,
                          confirmPassword: confirmPass!);
                      await BlocProvider.of<RegisterCubit>(context)
                          .register(register);
                      controller?.clear();
                    }
                  },
            child: (state is RegisterStateLoading)
                ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(
                      color: AppColors.backColor,
                    ),
                  )
                : const Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        );
      },
    );
  }

  void navToHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const HomeView(),
      ),
    );
  }
}
