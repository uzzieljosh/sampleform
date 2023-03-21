import 'package:flutter/material.dart';
import 'package:week4/formsample.dart';
import 'package:week4/inputtext.dart';
import 'button_sample.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Interactivity Sample"),
        ),
        body: ListView(
          children: [
            FormSample(),
            // ButtonSample(),
            // InputFieldsSample(),
          ],
        ),
      ),
    );
  }
}
