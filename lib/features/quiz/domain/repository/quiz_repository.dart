import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/quiz/data/model/quiz_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class IQuizRepository {
  Future<Either<NetworkFailure, QuizResponseModel>> getQuiz({
    required int id,
  });
}
