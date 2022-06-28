import 'package:counter_provider/counter_provider.dart';
import 'package:counter_provider/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
      create: (_) => CounterProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Dashboard(),
      ),
    );
  }
}
