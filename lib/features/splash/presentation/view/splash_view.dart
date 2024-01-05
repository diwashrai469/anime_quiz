import 'package:anime_quiz/core/services/injectable/injectable.dart';
import 'package:anime_quiz/core/services/local_storage.dart';
import 'package:anime_quiz/features/dashboard/view/dashboard_view.dart';
import 'package:anime_quiz/features/login/presentation/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final localStorage = locator<LocalStorageService>();
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      checkToken();
    });
    super.initState();
  }

  void checkToken() {
    final String? token = localStorage.read(LocalStorageKeys.accessToken);
    if (token == null || token.isEmpty) {
      Get.offAll(() => const LoginView());
    } else {
      Get.offAll(() => const DashBoardView());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Loading..."),
      ),
    );
  }
}
