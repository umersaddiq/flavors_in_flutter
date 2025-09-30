import 'package:flutter/material.dart';

import 'flavours/flavor_config.dart';
import 'src/app.dart';

void mainCommon({
  required Flavor flavor,
  required String baseUrl,
  required String name,
}) {
  FlavorConfig(flavor: flavor, baseUrl: baseUrl, name: name);
  runApp(const MyApp());
}
