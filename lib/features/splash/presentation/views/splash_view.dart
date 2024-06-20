import 'package:cancer/features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:cancer/features/welcome/presentation/view/wlcome_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeView(),
    );
  }
}
