import 'package:anime_quiz/common/constant/app_dimens.dart';
import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/widgets/k_button.dart';
import 'package:anime_quiz/common/widgets/k_textformfield.dart';
import 'package:anime_quiz/theme/app_theme.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController usernameLoginController = TextEditingController();
    TextEditingController passwordLoginController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: AppDimes.mainPagePadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome TO ',
                      style: TextStyle(
                        fontSize: AppDimes.headlineFontSizeOther,
                      ),
                    ),
                    TextSpan(
                      text: 'QuizAnime',
                      style: TextStyle(
                        fontSize: AppDimes.headlineFontSizeOther,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue,
                      ),
                    ),
                  ],
                ),
              ),
              elHeightSpan,
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mHeightSpan,
                    KTextFormField(
                      controller: usernameLoginController,
                      hint: 'Enter your Username',
                      label: 'Username',
                    ),
                    mHeightSpan,
                    KTextFormField(
                      controller: passwordLoginController,
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
                            fontSize: AppDimes.headlineFontSizeXXSmall),
                      ),
                    ),
                    mHeightSpan,
                    KButton(
                        size: ButtonSize.small,
                        backgroundColor: Colors.blue,
                        child: const Text('Login'),
                        onPressed: () {}),
                  ],
                ),
              ),
              lHeightSpan,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Dont have an account? ',
                          style: TextStyle(
                            fontSize: AppDimes.headlineFontSizeXXSmall,
                          ),
                        ),
                        TextSpan(
                          text: 'Signup',
                          style: TextStyle(
                            fontSize: AppDimes.headlineFontSizeXXSmall,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
