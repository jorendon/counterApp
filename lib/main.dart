import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_functions_screen.dart';

void main (){
  runApp(const MayApp());
}

class MayApp extends StatelessWidget {
  const MayApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:  ThemeData(useMaterial3: true,colorSchemeSeed: Colors.grey),
      home: const CounterFunctionsScreen(),
    );
  }
 
}