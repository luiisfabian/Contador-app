import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter_function_screen.dart';
import 'package:hello_world_app/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        colorSchemeSeed: Colors.red
      ),
      home:const CounterFunctionScreen()
    );
  }
}




