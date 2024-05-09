import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter Function"),
          leading: IconButton(
              onPressed: () {
                setState(() {
                  counter = 0;
                });
              },
              icon: Icon(Icons.refresh_rounded)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counter.toString(),
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.bold),
              ),
              Text(
                counter >= 2 ? "Clicks" : "Click",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomFloatingActionButton(
              counter: counter,
              icon: Icons.refresh_outlined,
              onPressed: () {
                counter = 0;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFloatingActionButton(
              onPressed: () {
                setState(() {
                  if (counter >= 1) {
                    counter--;
                  }
                });
              },
              counter: counter,
              icon: Icons.exposure_minus_1_outlined,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomFloatingActionButton(
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
              counter: counter,
              icon: Icons.plus_one,
            ),
          ],
        ));
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  CustomFloatingActionButton({
    super.key,
    required this.counter,
    required this.icon,
    required this.onPressed,
  });
  final IconData icon;
  int counter;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 20,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
