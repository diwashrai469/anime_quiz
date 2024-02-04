import 'package:anime_quiz/core/services/intercepters.dart';
import 'package:anime_quiz/features/quiz/data/model/quiz_response_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuizServices {
  final DioService _dioService;
  QuizServices(
    this._dioService,
  );

  Future<QuizResponseModel> getQuiz({
    required int id,
  }) async {
    final response = await _dioService.http.get(
      "/qs/quiz/$id",
    );
    return QuizResponseModel.fromJson(response.data);
  }
}
