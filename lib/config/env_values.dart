import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_template/app/core/extensions/dotenv_ext.dart';

class EnvValues {
  final String apiBaseUrl;
  final bool showLogs;

  EnvValues({
    required this.apiBaseUrl,
    this.showLogs = false,
  });

  static EnvValues fromEnvironment() {
    return EnvValues(
      apiBaseUrl: dotenv.get("BASE_URL"),
      showLogs: dotenv.getBoolOrDefault("SHOW_LOGS", fallback: false),
    );
  }
}
