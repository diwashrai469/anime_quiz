import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/utils/app_text_style.dart';
import 'package:anime_quiz/common/widgets/k_button.dart';
import 'package:anime_quiz/common/widgets/k_textformfield.dart';
import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/features/login/presentation/view/login_view.dart';
import 'package:anime_quiz/features/signup/presentation/view_model/signup_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingnupView extends StatelessWidget {
  const SingnupView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(locator<SignupViewModel>());
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
                            color: Colors.lightBlue),
                      ),
                    ],
                  ),
                ),
                mHeightSpan,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      mHeightSpan,
                      KTextFormField(
                        controller: controller.fullnameController,
                        hint: "Enter your Fullname.",
                        label: "Fullname",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      mHeightSpan,
                      KTextFormField(
                        controller: controller.emailController,
                        hint: "Enter your email.",
                        label: "Email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      mHeightSpan,
                      KTextFormField(
                        controller: controller.usernameController,
                        hint: "Enter your username.",
                        label: "Username",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      mHeightSpan,
                      KTextFormField(
                        controller: controller.passwordController,
                        hint: "Enter your password.",
                        label: "Password",
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      elHeightSpan,
                      Obx(
                        () => KButton(
                            backgroundColor: Colors.blue,
                            isBusy: controller.isLoading,
                            child: Text(
                              "Signup",
                              style: appTextStyle()?.copyWith(
                                  fontWeight: AppDimens.lfontweight,
                                  color: Colors.white,
                                  fontSize: AppDimens.headlineFontSizeSSmall),
                            ),
                            onPressed: () => controller.signuUpuser(
                                email: controller.emailController.text,
                                password: controller.passwordController.text,
                                fullname: controller.fullnameController.text,
                                username: controller.usernameController.text)),
                      )
                    ],
                  ),
                ),
                sHeightSpan,
                GestureDetector(
                  onTap: () => Get.to(() => const LoginView()),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            fontSize: AppDimens.headlineFontSizeSSmall,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                              fontSize: AppDimens.headlineFontSizeSSmall,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
