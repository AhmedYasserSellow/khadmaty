import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/constants/assets.dart';
import 'package:graduation_project/features/auth/presentation/views/auth_view.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = 'SplashView';
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.fromFuture(HomeCubit.get(context).loadState()),
      builder: (context, snapshot) {
        HomeCubit cubit = HomeCubit.get(context);
        return AnimatedSplashScreen(
          splash: Image.asset(
            Assets.kLogo,
          ),
          splashIconSize: MediaQuery.of(context).size.width * 3 / 4,
          duration: 1500,
          nextScreen: cubit.loggedIn ? const HomeView() : const AuthView(),
        );
      },
    );
  }
}
