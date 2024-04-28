import 'package:cancer/core/utils/app_styles.dart';
import 'package:cancer/features/risk_assessment_tool/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class QuestionsList extends StatelessWidget {
  const QuestionsList({super.key});

  static const List<Map<String, dynamic>> items = [
    {
      "queestion": "1) What is your age (age group)?",
      "Answers": [
        '18-29',
        '30-34',
        '35-39',
        '40-44',
        '45-49',
        '50-54',
        '55-59',
        '60-64',
        '65-69',
        '70-74',
        '75-79',
        '80-84',
        'Age 85 or older',
      ]
    },
    {
      "queestion": "2) What is your race/ethnicity?",
      "Answers": [
        'Non-Hispanic white',
        'Non-Hispanic black',
        'Asian/Pacific Islander',
        'Native American',
        'Hispanic',
        'Other/mixed',
      ]
    },
    {
      "queestion":
          "3) Have any of your first-degree relatives (mother, sister or daughter) been diagnosed with breast cancer?",
      "Answers": [
        'Yes',
        'No',
      ]
    },
    {
      "queestion":
          "4) How old were you when you had your first menstrual period (Age at menarche)?",
      "Answers": [
        'Age 14 or older',
        'Age 12-13',
        'Age < 12',
      ]
    },
    {
      "queestion": "5) What was your age when you had your first child?",
      "Answers": [
        'Age < 20',
        'Age 20-24',
        'Age 25-29',
        'Age 30 or older',
        'Haven\'t given birth yet',
      ]
    },
    {
      "queestion": "6) Have you had any prior breast biopsies or aspiration?",
      "Answers": [
        'Yes',
        'No',
      ]
    },
    {
      "queestion": "7) What is your BI-RADS breast density?",
      "Answers": [
        'Almost entirely fat',
        'Scattered fibroglandular densities',
        'Heterogeneously dense',
        'Extremely dense',
      ]
    },
    {
      "queestion": "8) What is your menopausal status?",
      "Answers": [
        'Pre-or peri-menopausal',
        'Post-menopausal',
      ]
    },
    {
      "queestion": "9) What is your body mass index (kg/m^2)?",
      "Answers": [
        '10-24.99',
        '25-29.99',
        '30-34.99',
        '35 or more',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                items[index]["queestion"],
                style: AppStyles.mediamColored17(context),
              ),
              const SizedBox(
                height: 10,
              ),
              for (String answer in items[index]["Answers"])
                CustomButton(text: answer),
            ],
          ),
        );
      },
    );
  }
}
