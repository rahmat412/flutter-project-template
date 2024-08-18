import 'package:flutter_dotenv/flutter_dotenv.dart';

class FirebaseValues {
  final String apiKey;
  final String appIdAndroid;
  final String appIdIos;
  final String messagingSenderId;
  final String projectId;
  final String databaseURL;
  final String storageBucket;
  final String iosBundleId;

  FirebaseValues({
    required this.apiKey,
    required this.appIdAndroid,
    required this.appIdIos,
    required this.messagingSenderId,
    required this.projectId,
    required this.databaseURL,
    required this.storageBucket,
    required this.iosBundleId,
  });

  static FirebaseValues fromEnvironment() {
    return FirebaseValues(
      apiKey: dotenv.get("FIREBASE_API_KEY"),
      appIdAndroid: dotenv.get("FIREBASE_APP_ID_ANDROID"),
      appIdIos: dotenv.get("FIREBASE_APP_ID_IOS"),
      messagingSenderId: dotenv.get("FIREBASE_MESSAGING_SENDER_ID"),
      projectId: dotenv.get("FIREBASE_PROJECT_ID"),
      databaseURL: dotenv.get("FIREBASE_DATABASE_URL"),
      storageBucket: dotenv.get("FIREBASE_STORAGE_BUCKET"),
      iosBundleId: dotenv.get("FIREBASE_IOS_BUNDLE_ID"),
    );
  }
}
