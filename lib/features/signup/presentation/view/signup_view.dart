import 'package:anime_quiz/common/constant/ui_helpers.dart';
import 'package:anime_quiz/common/widgets/k_button.dart';
import 'package:anime_quiz/common/widgets/k_textformfield.dart';
import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/features/signup/presentation/view_model/signup_view_model.dart';
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
            return Column(
              children: [
                KTextFormField(
                  controller: fullnameController,
                  hint: "Enter your Fullname.",
                  label: "Fullname",
                  keyboardType: TextInputType.emailAddress,
                ),
                sHeightSpan,
                KTextFormField(
                  controller: emailController,
                  hint: "Enter your email.",
                  label: "Email",
                  keyboardType: TextInputType.emailAddress,
                ),
                sHeightSpan,
                KTextFormField(
                  controller: usernameController,
                  hint: "Enter your username.",
                  label: "Username",
                  keyboardType: TextInputType.emailAddress,
                ),
                sHeightSpan,
                KTextFormField(
                  controller: passwordController,
                  hint: "Enter your password.",
                  label: "Password",
                  obscureText: true,
                  keyboardType: TextInputType.emailAddress,
                ),
                mHeightSpan,
                KButton(
                  isBusy: controller.isLoading,
                  child: const Text("Signup"),
                  onPressed: () {
                    controller.signuUpuser(
                        email: emailController.text,
                        password: passwordController.text,
                        fullname: fullnameController.text,
                        username: usernameController.text);
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
