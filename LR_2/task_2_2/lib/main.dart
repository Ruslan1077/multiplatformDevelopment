import 'package:flutter/material.dart';
import 'package:side_screen/body_widget.dart';
import 'top_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20),
                TopWidget(),
                const SizedBox(height: 20),
                BodyWidget()
              ],
            ),
          )
        )
      ),
    );
  }
}
