import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practies/providers/sum_provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1000.0,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                "Count: ",
                style: TextStyle(fontSize: 25),
              ),
              Text(
                (context.watch<SumProvider>().number.toString()),
                style: const TextStyle(fontSize: 45.0),
              ),
            ]),
          ),
          Column(            
            children: [
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    context.read<SumProvider>().incrementCounter();
                  },
                  child: const Icon(Icons.add)),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    context.read<SumProvider>().decrementCounter();
                  },
                  child: const Icon(Icons.remove))
            ],
          ),
        ],
      ),
    );
  }
}
