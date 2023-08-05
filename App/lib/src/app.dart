// ignore_for_file: file_names

import 'package:aula_template/src/Tabs/tabs.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Template Aula",
      theme: ThemeData(primaryColor: Colors.blue.shade100),
      home: Tabs(),
    );
  }
}
