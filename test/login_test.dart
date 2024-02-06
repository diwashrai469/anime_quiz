import 'package:anime_quiz/core/services/local_storage.dart';
import 'package:anime_quiz/core/services/toast_services.dart';
import 'package:anime_quiz/features/login/domain/usecase/login_usercase.dart';
import 'package:anime_quiz/features/login/presentation/view_model/login_view_model.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oktoast/oktoast.dart';

class MockloginUsecase extends Mock implements LoginUsecase {}

class MockloginViewModel extends Mock implements LoginViewModel {}

class MockloginResponseModel extends Mock implements SignupResponseModel {}

class MockLocalstorage extends Mock implements LocalStorageService {}

class MockToastService extends Mock implements ToastService {}

void main() {
  late MockloginUsecase mockloginUsecase;
  late MockloginViewModel mockloginViewModel;
  late MockLocalstorage mockLocalstorage;
  late MockloginResponseModel mockloginResponseModel;
  late MockToastService mockToastService;

  setUp(() {
    mockloginUsecase = MockloginUsecase();
    mockloginViewModel = MockloginViewModel();
    mockloginResponseModel = MockloginResponseModel();
    mockLocalstorage = MockLocalstorage();
    mockToastService = MockToastService();
  });

  group(
    "Login services",
    () {
      test(
        'loginUser should succeed and navigate to DashBoardView',
        () async {
          when(() => mockloginUsecase.call(
                  username: 'Lancer', password: 'Helloworld123'))
              .thenAnswer((_) => Future.value(Right(mockloginResponseModel)));

          final loinViewModel = LoginViewModel(
              mockloginUsecase, mockLocalstorage, mockToastService);
          await loinViewModel.loginUser(
              username: 'Lancer', password: 'Helloworld123');

          expect(
              mockLocalstorage.read(LocalStorageKeys.accessToken), isNotNull);
        },
      );
    },
  );
}
