import 'package:advanced/core/di/dependency_injection.dart';
import 'package:advanced/core/routing/app_router.dart';
import '../doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocApp(appRouter: AppRouter()));
}
