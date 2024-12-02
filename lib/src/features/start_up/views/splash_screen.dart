// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:futo_alert/src/features/auth/view/login_screen.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>const LoginScreen(),
          ));
    });
    //     var data = ref.read(userRepositoryProvider).getCurrentState();
    //     return switch (data) {
    //       CurrentState.loggedIn => context.replaceNamed(AppRouter.dashboard),
    //       CurrentState.onboarded => context.replaceNamed(AppRouter.login),
    //       _ => context.replaceNamed(AppRouter.onboarding)
    //     };
    //   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/images/app_logo.png'),
          ),
        ],
      ),
    );
  }
}
