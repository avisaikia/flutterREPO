import 'package:flutter/material.dart';
import 'package:weather_one/container.dart';

void main() => runApp(MyContainer());

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              CustomContainer(
                height: 300 ,
                color: Colors.yellowAccent,
                text: 'Container 1',
                fontSize: 30,
                width: 350,
               borderRadius: BorderRadius.circular(20),
              ),
              SizedBox(height: 20,),
              CustomContainer(
                height: 300 ,
                color: Colors.deepPurpleAccent,
                text: 'Container 1',
                fontSize: 30,
                width: 350,
                borderRadius: BorderRadius.circular(20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
