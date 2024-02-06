import 'dart:async';

import 'package:anime_quiz/core/base_model/base_model.dart';
import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/core/services/toast_services.dart';
import 'package:anime_quiz/features/quiz/data/model/quiz_response_model.dart';
import 'package:anime_quiz/features/quiz/domain/usercase/quiz_usercase.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuizViewModel extends BaseModel {
  final QuizUsercase _quizUsercase;
  QuizViewModel(
    this._quizUsercase,
  );
  QuizResponseModel? quizResponseModel;

  int resultCount = 0;
  int questionCountIndex = 0;
  RxInt remainingTime = 10.obs;

  initial(int id) {
    getQuiz(
      id: id,
    );
  }

  void getTimeoff() {
    if ((questionCountIndex < 9)) {
      Timer.periodic(
        const Duration(seconds: 1),
        (timer) {
          if (remainingTime.value <= 0) {
            moveToNextQuestion(false);
          } else {
            remainingTime.value--;
          }
        },
      );
    }
  }

  void moveToNextQuestion(bool selectedOption) {
    if (questionCountIndex > 9) {
      return;
    } else {
      if (selectedOption == true) {
        resultCount += 1;
      }
      remainingTime.value = 10;

      questionCountIndex += 1;
    }

    update();
  }

  getQuiz({
    required int id,
  }) async {
    setLoading(true);

    var result = await _quizUsercase.call(
      id: id,
    );
    result.fold(
      (NetworkFailure error) {
        if (error.message?.isNotEmpty == true) {
          ToastService().e(error.message.toString());
        }
      },
      (QuizResponseModel data) {
        quizResponseModel = data;
        update();
        setLoading(false);
        getTimeoff();
      },
    );
  }
}
