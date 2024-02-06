import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/quiz/data/model/quiz_response_model.dart';
import 'package:anime_quiz/features/quiz/domain/usercase/quiz_usercase.dart';
import 'package:anime_quiz/features/quiz/presentation/view_model/quiz_view_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockQuizUsecase extends Mock implements QuizUsercase {}

class MockQuizViewModel extends Mock implements QuizViewModel {}

class MockQuizResponseModel extends Mock implements QuizResponseModel {}

class MockQuizNetworkFailuer extends Mock implements NetworkFailure {}

void main() {
  late MockQuizUsecase mockQuizUsecase;
  late MockQuizViewModel mockQuizViewModel;
  late MockQuizNetworkFailuer mockQuizNetworkFailuer;
  late MockQuizResponseModel mockQuizResponseModel;

  setUp(() {
    mockQuizUsecase = MockQuizUsecase();
    mockQuizResponseModel = MockQuizResponseModel();
    mockQuizViewModel = MockQuizViewModel();
    mockQuizNetworkFailuer = MockQuizNetworkFailuer();
  });

  group(
    "Quiz viewmodel test",
    () {
      test(
        'getQuiz fetches quiz data successfully',
        () async {
          when(() => mockQuizUsecase.call(id: 1))
              .thenAnswer((_) => Future.value(Right(mockQuizResponseModel)));

          final viewModel = QuizViewModel(mockQuizUsecase);

          await viewModel.getQuiz(id: 1);

          expect(viewModel.quizResponseModel, isNotNull);
        },
      );

      test(
        'getQuiz should handle failure response correctly',
        () async {
          const int id = 1;
          final networkFailure = mockQuizNetworkFailuer;

          when(() => mockQuizUsecase.call(id: id))
              .thenAnswer((_) async => Left(networkFailure));

          await mockQuizViewModel.getQuiz(id: id);

          expect(mockQuizViewModel.quizResponseModel, isNull);
        },
      );
    },
  );
}
