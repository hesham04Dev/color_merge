import 'package:flutter/material.dart';
import 'package:color_merge/color_merge.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          color: Colors.purple.withOpacity(0.5).merge(Colors.lightBlue),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.purple.withOpacity(0.5).whiteMerge(),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: 50,
          height: 50,
          color: Colors.purple.withOpacity(0.5).blackMerge(),
        ),
      ],
    )));
  }
}
