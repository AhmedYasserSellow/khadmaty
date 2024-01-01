import 'package:flutter/material.dart';
import 'package:graduation_project/features/auth/presentation/views/auth_view.dart';
import 'package:graduation_project/features/role_selection/presentation/views/job_view.dart';
import 'package:graduation_project/features/role_selection/presentation/views/role_view.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_in_view.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';
import 'package:graduation_project/features/splash/presentation/views/splash_view.dart';

Map<String, Widget Function(BuildContext context)> appRoutes = {
  SplashView.id: (context) => const SplashView(),
  AuthView.id: (context) => const AuthView(),
  SignInView.id: (context) => const SignInView(),
  SignUpView.id: (context) => const SignUpView(),
  RoleSelectorView.id: (context) => const RoleSelectorView(),
  JobView.id: (context) => const JobView(),
  HomeView.id: (context) => const HomeView(),
};
