import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MaterialApp(
            title: 'FirstPage',
            home: Scaffold(
                appBar: AppBar(
                  title: const Text('FirstPAge'),
                ),
                body: const Center(child: Text('Hello'))),
          )));
}
