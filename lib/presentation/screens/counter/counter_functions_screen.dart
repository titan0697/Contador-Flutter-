import "package:flutter/material.dart";

class CounterFunctionsScreen extends StatefulWidget {
  // para cambiar varios valores a la vez con el mismo nombre es sobre la variable que quiero cambiar y presionar f2
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions screen'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {
                setState(() {
                  clickCounter = 0;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter',
                  style: const TextStyle(
                      fontSize: 160, fontWeight: FontWeight.w100)),
              Text((clickCounter == 1) ? 'Click' : 'clicks',
                  style: const TextStyle(fontSize: 25))
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter++;
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            ),

            const SizedBox(height: 10,),

            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
          ],
        ));
  }
}
