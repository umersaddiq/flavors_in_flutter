enum Flavor { dev, staging, prod }

class FlavorConfig {
  FlavorConfig._({
    required this.baseUrl,
    required this.flavor,
    required this.name,
  });

  final Flavor flavor;
  final String baseUrl;
  final String name;

  static FlavorConfig? _instance;

  factory FlavorConfig({
    required Flavor flavor,
    required String baseUrl,
    required String name,
  }) {
    _instance ??= FlavorConfig._(flavor: flavor, baseUrl: baseUrl, name: name);
    return _instance!;
  }

  static FlavorConfig get instance {
    if (_instance == null) throw Exception('FlavorConfig is not initialized');
    return _instance!;
  }

  static bool get isProduction => instance.flavor == Flavor.prod;

  static bool get isDevelopment => instance.flavor == Flavor.dev;

  static bool get isStaging => instance.flavor == Flavor.staging;
}
