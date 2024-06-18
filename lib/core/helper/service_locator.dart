import 'package:cancer/core/networking/api_services.dart';
import 'package:cancer/features/risk_assessment_tool/data/repository/risk_assessment_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

abstract class ServiceLocator {
  static final getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<ApiServices>(ApiServices(getIt.get<Dio>()));
    getIt.registerSingleton<RiskAssessmentRepoImpl>(
        RiskAssessmentRepoImpl(apiServices: getIt.get<ApiServices>()));
  }
}
