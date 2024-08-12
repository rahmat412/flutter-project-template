import 'package:flutter/material.dart';

import '/app/my_app.dart';
import 'config/build_config.dart';
import 'config/env_config.dart';
import 'config/environment.dart';

void main() {
  EnvConfig prodConfig = EnvConfig(
    appName: "Flutter Template Prod",
    baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.PRODUCTION,
    envConfig: prodConfig,
  );

  runApp(MyApp());
}
