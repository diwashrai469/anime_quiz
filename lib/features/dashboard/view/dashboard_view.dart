import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/utils/app_text_style.dart';
import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/core/services/local_storage.dart';
import 'package:anime_quiz/features/levels/presentation/level_view.dart';
import 'package:anime_quiz/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    final localStorage = locator<LocalStorageService>();
    final String? userEmail = localStorage.read(LocalStorageKeys.email);
    final String? userName = localStorage.read(LocalStorageKeys.userName);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dashboard"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            width: Get.width,
            decoration: const BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  radius: 25,
                  child: Text(userName![0]),
                ),
                mWidthSpan,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: appTextStyle()?.copyWith(
                          fontWeight: AppDimens.lfontweight,
                          fontSize: AppDimens.headlineFontSizeSmall1),
                    ),
                    Text(
                      userEmail ?? "",
                      style: appTextStyle()?.copyWith(
                          fontWeight: AppDimens.mfontweight,
                          fontSize: AppDimens.headlineFontSizeXSmall),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: CircleAvatar(
              backgroundColor: Colors.deepPurple.shade300,
              radius: 62.r,
              child: InkWell(
                onTap: () => Get.to(() => const LevelView()),
                child: CircleAvatar(
                  radius: 60.r,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Start",
                      style: appTextStyle()?.copyWith(
                          fontWeight: AppDimens.lfontweight,
                          fontSize: AppDimens.headlineFontSizeSmall),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
