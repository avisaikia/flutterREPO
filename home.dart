import 'package:flutter/material.dart';
import 'package:testing_one/home_two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                CustomContainer(
                  text: 'Container 1',
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomContainer(
                  text: 'Container 2',
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomContainer(
                  text: 'Container 3',
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(30),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
