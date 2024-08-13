import 'package:flutter_template/config/env_values.dart';
import 'package:flutter_template/config/environment.dart';

class EnvConfig {
  final Environment _flavor;
  final EnvValues _values;

  static late EnvConfig _instance;
  static var _initialized = false;

  factory EnvConfig.initialize({required String flavorString}) {
    if (!_initialized) {
      final flavor = Environment.fromString(flavor: flavorString);
      final values = EnvValues.fromEnvironment();
      _instance = EnvConfig._internal(flavor: flavor, values: values);
      _initialized = true;
    }
    return _instance;
  }

  EnvConfig._internal({
    required Environment flavor,
    required EnvValues values,
  })  : _flavor = flavor,
        _values = values;

  static Environment get flavor => _instance._flavor;

  static EnvValues get values => _instance._values;

  static bool isPROD() => _instance._flavor == Environment.prod;

  static bool isSTG() => _instance._flavor == Environment.stg;

  static bool isDEV() => _instance._flavor == Environment.dev;
}
