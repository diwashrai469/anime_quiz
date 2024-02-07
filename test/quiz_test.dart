import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/core/services/toast_services.dart';
import 'package:anime_quiz/features/quiz/data/model/quiz_response_model.dart';
import 'package:anime_quiz/features/quiz/domain/usercase/quiz_usercase.dart';
import 'package:anime_quiz/features/quiz/presentation/view_model/quiz_view_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mocktail/mocktail.dart';

class MockQuizUsercase extends Mock implements QuizUsercase {}

class MockQuizNetworkFailure extends Mock implements NetworkFailure {}

class MockToastService extends Mock implements ToastService {}

void main() {
  late QuizViewModel sut;
  late MockQuizUsercase mockQuizUsercase;
  late MockQuizNetworkFailure mockQuizNetworkFailure;
  late MockToastService mockToastService;

  setUp(() {
    mockQuizUsercase = MockQuizUsercase();
    mockToastService = MockToastService();
    mockQuizNetworkFailure = MockQuizNetworkFailure();
    sut = QuizViewModel(mockQuizUsercase, mockToastService);
  });

  test(
    "initial value are correct",
    () {
      expect(sut.quizResponseModel, isNull);
      expect(sut.loading, RxBool(false));
    },
  );

  group(
    "getQuiz",
    () {
      void whenFunctionFroQuiz() {
        when(() => mockQuizUsercase.call(id: 1))
            .thenAnswer((_) async => Right(QuizResponseModel()));
      }

      test(
        "Get quiz using quizUsercase",
        () async {
          whenFunctionFroQuiz();
          await sut.getQuiz(id: 1);
          verify(
            () => mockQuizUsercase.call(id: 1),
          ).called(1);
        },
      );

      test("""indicates loading of data to true
    set data to quizresponseModel from the server
    indicate loading to false
      """, () async {
        whenFunctionFroQuiz();
        final future = sut.getQuiz(id: 1);
        expect(sut.isLoading, RxBool(true));
        await future;
        expect(sut.quizResponseModel, QuizResponseModel());
        expect(sut.isLoading, RxBool(false));
      });

      test(
        "error handling",
        () async {
          when(() => mockQuizUsercase.call(id: 1))
              .thenAnswer((_) async => Left(mockQuizNetworkFailure));
          final future = sut.getQuiz(id: 1);
          expect(sut.isLoading, RxBool(true));
          await future;
          expect(sut.quizResponseModel, isNull);
          expect(sut.isLoading, RxBool(false));
        },
      );
    },
  );
}
