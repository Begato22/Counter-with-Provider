import 'package:counter_provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterModuel extends StatelessWidget {
  const CounterModuel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 153,
      height: 153,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ],
      ),
      child: Center(
          child: Text("${Provider.of<CounterProvider>(context).counter}",
              style:
                  const TextStyle(fontSize: 70, fontWeight: FontWeight.w100))),
    );
  }
}
