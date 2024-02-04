import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/quiz/data/model/quiz_response_model.dart';
import 'package:anime_quiz/features/quiz/data/services/quiz_services.dart';
import 'package:anime_quiz/features/quiz/domain/repository/quiz_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IQuizRepository)
class QuizRepository extends IQuizRepository {
  final QuizServices _quizServices;

  QuizRepository(this._quizServices);
  @override
  Future<Either<NetworkFailure, QuizResponseModel>> getQuiz({
    required int id,
  }) async {
    try {
      var result = await _quizServices.getQuiz(
        id: id,
      );
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
