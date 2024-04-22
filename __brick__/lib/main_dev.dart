import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'flavors.dart';
import 'main.dart' as runner;

Future<void> main() async {
  // Flutter 엔진과 위젯의 바인딩 작업
  WidgetsFlutterBinding.ensureInitialized();

  F.appFlavor = Flavor.dev;
  await Firebase.initializeApp(
      // options: dev.DefaultFirebaseOptions.currentPlatform
      );

  // FlutterError.onError = (errorDetails) {
  //   FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
  // };

  // PlatformDispatcher.instance.onError = (error, stack) {
  //   FirebaseCrashlytics.instance.recordError(
  //     error,
  //     stack,
  //     fatal: true,
  //   );

  //   return true;
  // };

  runner.main();
}
