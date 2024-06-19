import 'package:cancer/core/helper/image_picker.dart';
import 'package:cancer/core/helper/permession_handler.dart';
import 'package:cancer/core/networking/api_services.dart';
import 'package:cancer/features/risk_assessment_tool/data/repository/risk_assessment_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

import '../../features/ct_scan_tool/data/ct_scan_repository_impl.dart';

abstract class ServiceLocator {
  static final getIt = GetIt.instance;

  static void setup() {
    getIt.registerSingleton<ImagePicker>(ImagePicker());
    getIt.registerSingleton<PermessionHandler>(PermessionHandler());

    getIt.registerSingleton<ImagePickerHelper>(ImagePickerHelper(
        picker: getIt.get<ImagePicker>(),
        permessionHandler: getIt.get<PermessionHandler>()));

    getIt.registerSingleton<Dio>(Dio());
    getIt.registerSingleton<ApiServices>(ApiServices(getIt.get<Dio>()));
    getIt.registerSingleton<RiskAssessmentRepoImpl>(
        RiskAssessmentRepoImpl(apiServices: getIt.get<ApiServices>()));
    getIt.registerSingleton<CtScanRepositoryImpl>(
        CtScanRepositoryImpl(getIt.get<ApiServices>()));
  }
}
