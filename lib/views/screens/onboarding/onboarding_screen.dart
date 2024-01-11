import 'package:flutter/material.dart';
import 'package:jobhubv2_0/constants/app_constants.dart';
import 'package:jobhubv2_0/controllers/onboarding_provider.dart';
import 'package:jobhubv2_0/views/screens/onboarding/widget/PageOne.dart';
import 'package:jobhubv2_0/views/screens/onboarding/widget/PageThree.dart';
import 'package:jobhubv2_0/views/screens/onboarding/widget/PageTwo.dart';
import 'package:provider/provider.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        Consumer<OnBoardNotifier>(builder: (context, onBoardNotifier, child) {
      // ignore: avoid_print
      print(onBoardNotifier.isLastPage);
      return Stack(
        children: [
          PageView(
            controller: pageController,
            physics: const AlwaysScrollableScrollPhysics(),
            onPageChanged: (value) {
              // ignore: unrelated_type_equality_checks
              onBoardNotifier.isLastPage == 2;
            },
            children: const [PageOne(), PageTwo(), PageThree()],
          )
        ],
      );
    }));
  }
}
