import 'package:cancer/core/enums/assesstment_enum.dart';

import '../../features/risk_assessment_tool/data/models/risk_assessment_model.dart';

List<RiskAssessmentModel> riskAssessmentItems = [
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.age,
      question: "1) What is your age (age group)?",
      answers: [
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
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.race,
      question: "2) What is your race/ethnicity?",
      answers: [
        'Non-Hispanic white',
        'Non-Hispanic black',
        'Asian/Pacific Islander',
        'Native American',
        'Hispanic',
        'Other/mixed',
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.firstDegree,
      question:
          "3) Have any of your first-degree relatives (mother, sister or daughter) been diagnosed with breast cancer?",
      answers: [
        'Yes',
        'No',
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.period,
      question:
          "4) How old were you when you had your first menstrual period (Age at menarche)?",
      answers: [
        'Age 14 or older',
        'Age 12-13',
        'Age < 12',
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.ageFirstChild,
      question: "5) What was your age when you had your first child?",
      answers: [
        'Age < 20',
        'Age 20-24',
        'Age 25-29',
        'Age 30 or older',
        'Haven\'t given birth yet',
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.breastBiopsies,
      question: "6) Have you had any prior breast biopsies or aspiration?",
      answers: [
        'Yes',
        'No',
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.bI,
      question: "7) What is your BI-RADS breast density?",
      answers: [
        'Almost entirely fat',
        'Scattered fibroglandular densities',
        'Heterogeneously dense',
        'Extremely dense',
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.menopausalStatus,
      question: "8) What is your menopausal status?",
      answers: [
        'Pre-or peri-menopausal',
        'Post-menopausal',
      ]),
  RiskAssessmentModel(
      assesstmentEnum: AssesstmentEnum.mass,
      question: "9) What is your body mass index (kg/m^2)?",
      answers: [
        '10-24.99',
        '25-29.99',
        '30-34.99',
        '35 or more',
      ]),
];
