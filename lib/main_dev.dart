import 'package:flutter/material.dart';

import '/app/my_app.dart';
import 'config/build_config.dart';
import 'config/env_config.dart';
import 'config/environment.dart';

void main() {
  EnvConfig devConfig = EnvConfig(
    appName: "Flutter Template Dev",
    baseUrl: "https://api.github.com",
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  runApp(MyApp());
}
