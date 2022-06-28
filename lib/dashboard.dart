import 'package:counter_provider/counter_moduel.dart';
import 'package:counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var n = 0;
    print("%%%%%%%%%%%%% n = ${n++} %%%%%%%%%%%%%");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter With Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CounterModuel(),
              CounterModuel(),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Provider.of<CounterProvider>(context,listen: false).increase(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
