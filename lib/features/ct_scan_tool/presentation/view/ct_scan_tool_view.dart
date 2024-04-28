import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view/widgets/custom_button.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view/widgets/how_to_use.dart';
import 'package:cancer/features/ct_scan_tool/presentation/view/widgets/upload_image.dart';
import 'package:flutter/material.dart';

class CtScanToolView extends StatelessWidget {
  const CtScanToolView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: Text(
            'CT Scan',
            style: AppStyles.bold30(context).copyWith(color: AppColors.primary),
          ),
        ),
        iconTheme: const IconThemeData(color: AppColors.primary),
        backgroundColor: AppColors.appBarColor,
      ),
      backgroundColor: AppColors.backColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            const SliverToBoxAdapter(
              child: HowToUse(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverToBoxAdapter(
              child: UploadImage(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomButton(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
