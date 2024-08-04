import 'package:application_bmi_calculator_me/home.dart';
import 'package:flutter/material.dart';

void main() {
  var application = Application();
  runApp(application);
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'dana'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
