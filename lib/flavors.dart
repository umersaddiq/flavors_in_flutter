enum Flavor {
  development,
  staging,
  production,
}

class F {
  static late final Flavor appFlavor;

  static String get name => appFlavor.name;

  static String get title {
    switch (appFlavor) {
      case Flavor.development:
        return '[DEV] My App';
      case Flavor.staging:
        return '[STG] My App';
      case Flavor.production:
        return 'My App';
    }
  }

}
