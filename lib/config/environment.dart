enum Environment {
  dev,
  stg,
  prod;

  static Environment fromString({required String flavor}) {
    switch (flavor) {
      case "prod":
        return Environment.prod;
      case "stg":
        return Environment.stg;
      default:
        return Environment.dev;
    }
  }
}
