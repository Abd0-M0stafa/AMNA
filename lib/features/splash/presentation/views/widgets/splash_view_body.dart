import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/splash/presentation/views/widgets/sligding_text.dart';
import 'package:cancer/features/welcome/presentation/view/wlcome_view.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sligingAnimation;

  @override
  void initState() {
    super.initState();
    initSligdingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
              aspectRatio: 2.8 / 1,
              child: Image.asset('aseeets/images/amna_logo.png')),
          const SizedBox(
            height: 8,
          ),
          SligdingText(sligingAnimation: sligingAnimation),
        ],
      ),
    );
  }

  void initSligdingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    sligingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const WelcomeView(),
          ),
        );
      },
    );
  }
}
