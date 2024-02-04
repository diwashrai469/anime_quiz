import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/utils/app_text_style.dart';
import 'package:anime_quiz/features/quiz/presentation/view/quiz_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LevelView extends StatelessWidget {
  const LevelView({super.key});

  @override
  Widget build(BuildContext context) {
    final cardHeight = 40.h;
    final cardWidth = 150.w;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Select Your Quiz Level",
                style: appTextStyle()?.copyWith(
                    fontWeight: AppDimens.lfontweight,
                    fontSize: AppDimens.headlineFontSizeMedium),
              ),
              mHeightSpan,
              InkWell(
                onTap: () => Get.to(
                  () => const QuizView(
                    id: 1,
                  ),
                ),
                child: Card(
                  child: SizedBox(
                    height: cardHeight,
                    width: cardWidth,
                    child: Center(
                      child: Text(
                        "Level One",
                        style: appTextStyle()?.copyWith(
                            fontWeight: AppDimens.mfontweight,
                            fontSize: AppDimens.headlineFontSizeSSmall),
                      ),
                    ),
                  ),
                ),
              ),
              sHeightSpan,
              InkWell(
                onTap: () => Get.to(
                  () => const QuizView(
                    id: 2,
                  ),
                ),
                child: Card(
                  child: SizedBox(
                    height: cardHeight,
                    width: cardWidth,
                    child: Center(
                      child: Text(
                        "Level Two",
                        style: appTextStyle()?.copyWith(
                            fontWeight: AppDimens.mfontweight,
                            fontSize: AppDimens.headlineFontSizeSSmall),
                      ),
                    ),
                  ),
                ),
              ),
              sHeightSpan,
              InkWell(
                onTap: () => Get.to(
                  () => const QuizView(
                    id: 3,
                  ),
                ),
                child: Card(
                  child: SizedBox(
                    width: cardWidth,
                    height: cardHeight,
                    child: Center(
                      child: Text(
                        "Level Three",
                        style: appTextStyle()?.copyWith(
                            fontWeight: AppDimens.mfontweight,
                            fontSize: AppDimens.headlineFontSizeSSmall),
                      ),
                    ),
                  ),
                ),
              ),
              mHeightSpan,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.info),
                  xsWidthSpan,
                  const Text(
                      "You will have 10 seconds to choose your answers."),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
