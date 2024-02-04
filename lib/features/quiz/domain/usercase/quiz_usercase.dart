import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/quiz/data/model/quiz_response_model.dart';
import 'package:anime_quiz/features/quiz/domain/repository/quiz_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuizUsercase {
  final IQuizRepository _iQuizRepository;

  QuizUsercase(this._iQuizRepository);

  Future<Either<NetworkFailure, QuizResponseModel>> call({
    required int id,
  }) async {
    return await _iQuizRepository.getQuiz(
      id: id,
    );
  }
}
