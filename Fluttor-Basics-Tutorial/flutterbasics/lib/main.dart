import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: <Widget>[
            Text("Counter Value: => {$counter}"),
            Checkbox(
              value: false,
              onChanged: (newValue) {
                counter++;
                // ignore: avoid_print
                print("Counter Value: => {$counter}");
              },
            ),
          ],
        ),
      ),
    );
  }
}
 //Count Value incremented on every button click but not rendered in widget