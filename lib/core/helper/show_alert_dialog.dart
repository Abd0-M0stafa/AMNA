import 'package:cancer/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';

void showAlert(context, String message) {
  QuickAlert.show(
      context: context,
      type: QuickAlertType.info,
      text: message,
      confirmBtnColor: AppColors.primary,
      onConfirmBtnTap: () {
        Navigator.pop(context);
      });
}
