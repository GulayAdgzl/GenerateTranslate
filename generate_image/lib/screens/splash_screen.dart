import 'package:flutter/material.dart';
import 'package:generate_image/helper/global.dart';
import 'package:generate_image/screens/home_screen.dart';
import 'package:generate_image/widgets/custom_loading.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // wait for some time on splash & then move to next screen
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() =>
          Pref.showOnboarding ? const OnboardingScreen() : const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    // initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Center(
        child: CustomLoading(),
      ),
    );
  }
}
