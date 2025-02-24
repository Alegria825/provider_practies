import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practies/pages/home_page.dart';
import 'package:provider_practies/providers/sum_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SumProvider()
        ),
      ],
         child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homepage(),
               ),
             );
    
  }
}
