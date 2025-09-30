import 'package:flutter/material.dart';

import '../flavours/flavor_config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My App : ${FlavorConfig.instance.name}')),
        body: Center(
          child: Text('Hello, World! : ${FlavorConfig.instance.baseUrl}'),
        ),
      ),
    );
  }
}
