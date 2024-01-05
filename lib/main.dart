import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/core/services/local_storage.dart';
import 'package:anime_quiz/features/splash/presentation/view/splash_view.dart';
import 'package:anime_quiz/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';

void main(List<String> args) async {
  await LocalStorageService.init();
  setupLocator();
  runApp(
    OKToast(
      position: ToastPosition.bottom,
      child: ScreenUtilInit(
        designSize: const Size(AppDimens.appWidth, AppDimens.appHeight),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppThemes.light,
            home: const SplashView(),
          );
        },
      ),
    ),
  );
}
