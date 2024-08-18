import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_template/app/my_app.dart';
import 'package:flutter_template/config/env_config.dart';
import 'package:flutter_template/config/firebase_config.dart';

void main() async {
  const flavor = String.fromEnvironment("flavor", defaultValue: "dev");

  await dotenv.load(fileName: getEnvFileName(flavor));

  EnvConfig.initialize(flavorString: flavor);

  await Firebase.initializeApp(options: FirebaseConfig.currentPlatform);

  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  runApp(MyApp());
}

String getEnvFileName(String flavor) {
  switch (flavor) {
    case "dev":
      return ".env.dev";
    case "stg":
      return ".env.stg";
    default:
      return ".env";
  }
}
