import 'package:cancer/core/helper/save_risk_assessment_data.dart';
import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import '../../../../../core/static_data/risk_assessment_data.dart';

class QuestionsList extends StatefulWidget {
  const QuestionsList({super.key});

  @override
  State<QuestionsList> createState() => _QuestionsListState();
}

class _QuestionsListState extends State<QuestionsList> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: riskAssessmentItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                riskAssessmentItems[index].question,
                style: AppStyles.mediamColored17(context),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(
                    riskAssessmentItems[index].answers.length, (answerIndex) {
                  return GestureDetector(
                    onTap: () {
                      updateIndexOfAnswer(index, answerIndex);
                      saveDataToVariables(context, index);
                    },
                    child: CustomButton(
                        text: riskAssessmentItems[index].answers[answerIndex],
                        isActive: riskAssessmentItems[index].indexOfActive ==
                            answerIndex),
                  );
                }),
              )
            ],
          ),
        );
      },
    );
  }

  void updateIndexOfAnswer(int index, int answerIndex) {
    riskAssessmentItems[index].indexOfActive = answerIndex;
    setState(() {});
  }
}
