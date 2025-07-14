import 'package:advanced/core/di/dependency_injection.dart';
import 'package:advanced/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../doc_app.dart';
import 'package:flutter/material.dart';

void main() async {
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(appRouter: AppRouter()));
}
