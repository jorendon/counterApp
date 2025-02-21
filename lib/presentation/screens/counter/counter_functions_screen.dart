import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  String get message => clickCounter == 1 ? 'Click' : 'Clicks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
              icon: const Icon(Icons.refresh),
            ),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text(message, style: const TextStyle(fontSize: 25)),
            ],
          ),
        ),
        floatingActionButton: 
          Column(mainAxisAlignment: MainAxisAlignment.end, 
          children: [
          CustomButton(icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  clickCounter++;
                });
              }),
          const SizedBox(height: 10),
          CustomButton(icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if(clickCounter==0)return;
                  clickCounter--;
                });
              }),
          const SizedBox(height: 10),
          CustomButton(icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              }),
        ])
        );

}
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
