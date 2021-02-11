import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

// Android: - adjusted AndroidManifest.xml
// Ios: - adjusted Info.plist

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
