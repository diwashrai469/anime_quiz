import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/utils/app_text_style.dart';
import 'package:anime_quiz/common/widgets/k_button.dart';
import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/features/quiz/presentation/view_model/quiz_view_model.dart';
import 'package:anime_quiz/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizView extends StatelessWidget {
  final int id;
  const QuizView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final quizViewModel = Get.put(locator<QuizViewModel>());
    return Scaffold(
      body: GetBuilder<QuizViewModel>(
        initState: (state) => quizViewModel.initial(id),
        builder: (controller) {
          return controller.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Center(
                  child: (controller.questionCountIndex > 9)
                      ? Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Your total score is: ${controller.resultCount}/10",
                                style: appTextStyle()?.copyWith(
                                    fontSize: AppDimens.headlineFontSizeSmall1,
                                    fontWeight: AppDimens.lfontweight),
                              ),
                              mHeightSpan,
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  KButton(
                                      backgroundColor: darkSucessColor,
                                      child: Text(
                                        "Go back",
                                        style: appTextStyle()?.copyWith(
                                            fontSize: AppDimens
                                                .headlineFontSizeSmall1,
                                            color: Colors.white,
                                            fontWeight: AppDimens.lfontweight),
                                      ),
                                      onPressed: () => Get.back()),
                                ],
                              )
                            ],
                          ),
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.timer),
                                  Text(
                                      "Timer: ${controller.remainingTime.value} seconds"),
                                ],
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                final quizIndex = controller.quizResponseModel
                                    ?.questions?[controller.questionCountIndex];
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        quizIndex?.label ?? "",
                                        textAlign: TextAlign.center,
                                        style: appTextStyle()?.copyWith(
                                            fontWeight: AppDimens.lfontweight,
                                            fontSize: AppDimens
                                                .headlineFontSizeOther),
                                      ),
                                      lHeightSpan,
                                      GridView.builder(
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 8.0,
                                          crossAxisSpacing: 8.0,
                                        ),
                                        padding: const EdgeInsets.all(8.0),
                                        itemCount:
                                            quizIndex?.choices?.length ?? 0,
                                        itemBuilder: (context, index) {
                                          final choiceIndex =
                                              quizIndex?.choices?[index];
                                          return InkWell(
                                            onTap: () {
                                              controller.moveToNextQuestion(
                                                  choiceIndex?.isCorrect ??
                                                      false);
                                            },
                                            child: Card(
                                              child: Center(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(4.0),
                                                  child: Text(
                                                    textAlign: TextAlign.center,
                                                    choiceIndex?.choiceTitle ??
                                                        '',
                                                    style: appTextStyle()
                                                        ?.copyWith(
                                                      fontSize: AppDimens
                                                          .headlineFontSizeSSmall,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                );
        },
      ),
    );
  }
}
