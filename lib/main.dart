import 'package:flutter/material.dart';
import 'package:invest/screens/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Invest App',
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
