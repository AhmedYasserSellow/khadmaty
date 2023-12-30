import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/core/utils/routes/app_routes.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/splash/presentation/views/splash_view.dart';

void main() async {
  await GetInstance.setupFirebase();
  await GetInstance.registerInstances();
  runApp(const Khadmaty());
}

class Khadmaty extends StatelessWidget {
  const Khadmaty({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: NeutralColors.k500,
      ),
    );
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: MaterialApp(
        theme: theme,
        debugShowCheckedModeBanner: false,
        routes: appRoutes,
        initialRoute: SplashView.id,
      ),
    );
  }
}
