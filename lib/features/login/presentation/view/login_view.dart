import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/widgets/k_button.dart';
import 'package:anime_quiz/common/widgets/k_textformfield.dart';
import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/features/login/presentation/view_model/login_view_model.dart';
import 'package:anime_quiz/features/signup/presentation/view/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(locator<LoginViewModel>());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppDimens.mainPagePadding,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome TO ',
                          style: TextStyle(
                            fontSize: AppDimens.headlineFontSizeOther,
                          ),
                        ),
                        TextSpan(
                          text: 'QuizAnime',
                          style: TextStyle(
                            fontSize: AppDimens.headlineFontSizeOther,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                  mHeightSpan,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        mHeightSpan,
                        KTextFormField(
                          controller: controller.userNameController,
                          hint: 'Enter your Username',
                          label: 'Username',
                        ),
                        mHeightSpan,
                        KTextFormField(
                          controller: controller.passwordController,
                          hint: 'Enter your Password',
                          label: 'Password',
                        ),
                        mHeightSpan,
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: AppDimens.headlineFontSizeXXSmall),
                          ),
                        ),
                        mHeightSpan,
                        Obx(
                          () => KButton(
                            isBusy: controller.isLoading,
                            size: ButtonSize.small,
                            backgroundColor: Colors.blue,
                            child: const Text('Login'),
                            onPressed: () => controller.loginUser(
                                username: controller.userNameController.text,
                                password: controller.passwordController.text),
                          ),
                        )
                      ],
                    ),
                  ),
                  sHeightSpan,
                  GestureDetector(
                    onTap: () => Get.to(() => const SingnupView()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Dont have an account? ',
                                style: TextStyle(
                                  fontSize: AppDimens.headlineFontSizeXXSmall,
                                ),
                              ),
                              TextSpan(
                                text: 'Signup',
                                style: TextStyle(
                                  fontSize: AppDimens.headlineFontSizeXXSmall,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
