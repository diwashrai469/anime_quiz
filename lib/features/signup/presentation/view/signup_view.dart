import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/utils/app_text_style.dart';
import 'package:anime_quiz/common/widgets/k_button.dart';
import 'package:anime_quiz/common/widgets/k_textformfield.dart';
import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/features/signup/presentation/view_model/signup_view_model.dart';
import 'package:anime_quiz/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingnupView extends StatelessWidget {
  const SingnupView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(locator<SignupViewModel>());

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController usernameController = TextEditingController();
    TextEditingController fullnameController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SignupViewModel>(
          builder: (controller) {
            return Padding(
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
                      Container(
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            mHeightSpan,
                            KTextFormField(
                              controller: fullnameController,
                              hint: "Enter your Fullname.",
                              label: "Fullname",
                              keyboardType: TextInputType.emailAddress,
                            ),
                            mHeightSpan,
                            KTextFormField(
                              controller: emailController,
                              hint: "Enter your email.",
                              label: "Email",
                              keyboardType: TextInputType.emailAddress,
                            ),
                            mHeightSpan,
                            KTextFormField(
                              controller: usernameController,
                              hint: "Enter your username.",
                              label: "Username",
                              keyboardType: TextInputType.emailAddress,
                            ),
                            mHeightSpan,
                            KTextFormField(
                              controller: passwordController,
                              hint: "Enter your password.",
                              label: "Password",
                              obscureText: true,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            elHeightSpan,
                            Obx(() => KButton(
                                  backgroundColor: Colors.blue,
                                  size: ButtonSize.large,
                                  isBusy: controller.isLoading,
                                  child: Text(
                                    "Signup",
                                    style: appTextStyle()?.copyWith(
                                        fontWeight: AppDimens.lfontweight,
                                        color: Colors.white,
                                        fontSize:
                                            AppDimens.headlineFontSizeSSmall),
                                  ),
                                  onPressed: () {
                                    controller.signuUpuser(
                                        email: emailController.text,
                                        password: passwordController.text,
                                        fullname: fullnameController.text,
                                        username: usernameController.text);
                                  },
                                ))
                          ],
                        ),
                      ),
                      mHeightSpan,
                      Text.rich(
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
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
