import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String get message => clickCounter == 1 ? 'Click' : 'Clicks';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Counter Screen'),
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('$clickCounter',style: const TextStyle(fontSize: 160,fontWeight: FontWeight.w100)),
            Text(message,style: const TextStyle(fontSize: 25)),
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed:(){
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
