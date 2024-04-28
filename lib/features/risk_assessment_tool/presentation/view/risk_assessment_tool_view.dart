import 'package:cancer/core/utils/app_colors.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/how_to_use.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/questions_form.dart';
import 'package:flutter/material.dart';

class RiskAssessmentToolView extends StatelessWidget {
  const RiskAssessmentToolView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Risk Assessment Tool',
          style: AppStyles.bold30(context).copyWith(color: AppColors.primary),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: AppColors.primary),
        backgroundColor: AppColors.appBarColor,
      ),
      backgroundColor: AppColors.backColor,
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          const HowToUse(),
          QuestionsForm(),
        ],
      ),
    );
  }
}
