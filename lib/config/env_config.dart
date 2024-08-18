import 'package:flutter_template/config/env_values.dart';
import 'package:flutter_template/config/environment.dart';
import 'package:flutter_template/config/firebase_values.dart';

class EnvConfig {
  final Environment _flavor;
  final EnvValues _values;
  final FirebaseValues _firebaseValues;

  static late EnvConfig _instance;
  static var _initialized = false;

  factory EnvConfig.initialize({required String flavorString}) {
    if (!_initialized) {
      final flavor = Environment.fromString(flavor: flavorString);
      final values = EnvValues.fromEnvironment();
      final firebaseValues = FirebaseValues.fromEnvironment();
      _instance = EnvConfig._internal(flavor: flavor, values: values, firebaseValues: firebaseValues);
      _initialized = true;
    }
    return _instance;
  }

  EnvConfig._internal({
    required Environment flavor,
    required EnvValues values,
    required FirebaseValues firebaseValues,
  })  : _flavor = flavor,
        _values = values,
        _firebaseValues = firebaseValues;

  static Environment get flavor => _instance._flavor;

  static EnvValues get values => _instance._values;

  static FirebaseValues get firebaseValues => _instance._firebaseValues;

  static bool isPROD() => _instance._flavor == Environment.prod;

  static bool isSTG() => _instance._flavor == Environment.stg;

  static bool isDEV() => _instance._flavor == Environment.dev;
}
