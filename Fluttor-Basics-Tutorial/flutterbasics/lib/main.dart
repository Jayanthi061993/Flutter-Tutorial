import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstPage',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('FirstPage'),
          ),
          body: const Center(child: Text('Hello World'))),
    );
  }
}

/**
 * void main() {
  //runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp])
      .then((value) => runApp(MaterialApp(
            title: 'FirstPage',
            home: Scaffold(
                appBar: AppBar(
                  title: const Text('FirstPage'),
                ),
                body: const Center(child: Text('Hello'))),
          )));
}
 */

