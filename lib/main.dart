import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_template/app/my_app.dart';
import 'package:flutter_template/config/env_config.dart';

void main() async {
  const flavor = String.fromEnvironment("flavor", defaultValue: "dev");

  await dotenv.load(fileName: getEnvFileName(flavor));

  EnvConfig.initialize(flavorString: flavor);

  runApp(MyApp());
}

String getEnvFileName(String flavor) {
  switch (flavor) {
    case "prod":
      return ".env";
    case "stg":
      return ".env.stg";
    default:
      return ".env.dev";
  }
}
