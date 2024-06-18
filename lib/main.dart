import 'package:cancer/app.dart';
import 'package:cancer/core/helper/service_locator.dart';
import 'package:flutter/material.dart';

void main() {
  ServiceLocator.setup();
  runApp(
    const CancerApp(),
  );
}
