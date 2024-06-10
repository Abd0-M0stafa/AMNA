import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/enums/assesstment_enum.dart';
import '../../../../../core/static_data/risk_assessment_data.dart';

class QuestionsList extends StatefulWidget {
  const QuestionsList({super.key});

  @override
  State<QuestionsList> createState() => _QuestionsListState();
}

class _QuestionsListState extends State<QuestionsList> {
  String? age,
      race,
      firstDegree,
      period,
      ageFirstChild,
      breastBiopsies,
      bI,
      menopausalStatus,
      mass;

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
                      saveDataToVariables(index);
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

  void saveDataToVariables(int index) {
    switch (riskAssessmentItems[index].assesstmentEnum) {
      case AssesstmentEnum.age:
        age = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.race:
        race = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.firstDegree:
        firstDegree = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.period:
        period = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.ageFirstChild:
        ageFirstChild = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.breastBiopsies:
        breastBiopsies = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.bI:
        bI = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.menopausalStatus:
        menopausalStatus = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
      case AssesstmentEnum.mass:
        mass = riskAssessmentItems[index]
            .answers[riskAssessmentItems[index].indexOfActive];
    }
  }
}
