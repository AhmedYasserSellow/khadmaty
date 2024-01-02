import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:graduation_project/core/utils/routes/app_routes.dart';
import 'package:graduation_project/core/utils/services/service_locator.dart';
import 'package:graduation_project/core/utils/theme/theme.dart';
import 'package:graduation_project/features/home/presentation/view_models/home_cubit/home_cubit.dart';
import 'package:graduation_project/features/splash/presentation/views/splash_view.dart';
import 'package:graduation_project/generated/l10n.dart';

void main() async {
  await GetInstance.setupFirebase();
  await GetInstance.registerInstances();
  runApp(const Khdmaty());
}

class Khdmaty extends StatelessWidget {
  const Khdmaty({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: NeutralColors.k500,
      ),
    );
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Khdmaty',
            locale: Locale(HomeCubit.get(context).locale),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: theme,
            debugShowCheckedModeBanner: false,
            routes: appRoutes,
            initialRoute: SplashView.id,
          );
        },
      ),
    );
  }
}
