import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:graduation_project/features/auth/data/repos/auth_repo_impl.dart';
import 'package:graduation_project/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class GetInstance {
  static final getIt = GetIt.instance;
  static Future setupFirebase() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future registerInstances() async {
    getIt.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance(),
    );
    getIt.registerSingleton<FirebaseAuth>(FirebaseAuth.instance);
    getIt.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
    getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl());
  }

  static final auth = getIt.get<FirebaseAuth>();
  static final store = getIt.get<FirebaseFirestore>();
  static final prefs = getIt.getAsync<SharedPreferences>();
  static final authRepoImpl = getIt.get<AuthRepoImpl>();
}
