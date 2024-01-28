import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/utils/app_text_style.dart';
import 'package:anime_quiz/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
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
                ),
                mWidthSpan,
                Text(
                  "Monkey D luffy",
                  style: appTextStyle()?.copyWith(
                      fontWeight: AppDimens.lfontweight,
                      fontSize: AppDimens.headlineFontSizeSmall1),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
