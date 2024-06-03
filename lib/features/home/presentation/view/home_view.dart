import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/features/home/presentation/view/widgets/chart_section.dart';
import 'package:cancer/features/home/presentation/view/widgets/drop_down_icon.dart';
import 'package:cancer/features/home/presentation/view/widgets/our_tools_section.dart';
import 'package:cancer/features/home/presentation/view/widgets/welcome_and_how_to_use_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Container(
                width: 35,
                decoration: ShapeDecoration(
                  color: AppColors.primary,
                  shape: CircleBorder(),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person,
                    size: 15,
                    color: AppColors.appBarColor,
                  ),
                ),
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 7 / 1,
                  child: Image.asset('assets/images/amna_logo.png'),
                ),
              ),
              DropDownIcon(),
            ],
          ),
        ),
        backgroundColor: AppColors.appBarColor,
      ),
      backgroundColor: AppColors.backColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: WelcomeAndHowToUseSection(),
            ),
            SliverToBoxAdapter(
              child: ChartSection(),
            ),
            SliverToBoxAdapter(
              child: OurToolsSection(),
            ),
          ],
        ),
      ),
    );
  }
}
