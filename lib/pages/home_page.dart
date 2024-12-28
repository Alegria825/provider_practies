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
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Count: ",
                  style: TextStyle(
                    fontSize: 25
                  ),
                ),
                Text(
                ( context.watch<SumProvider>().number.toString() ),
                style: const TextStyle(fontSize: 45.0),
              ),
              ]
            ),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            verticalDirection: VerticalDirection.down,
            children: [
            const SizedBox(height: 100),
            ElevatedButton(onPressed: () {
              //context.read<SumProvider>().plusOrLess();

            },
            child: const Text('+ 1', style: TextStyle(fontSize: 20),)),

            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              
            },
            child: const Text('- 1', style: TextStyle(fontSize: 20),))
            ],
          ),
        ],
      ),
    );
  } 
}
