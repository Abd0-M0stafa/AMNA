import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'widgets/ct_scan_tool_view_body.dart';

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
      body: const CtScanToolViewBody(),
    );
  }
}
