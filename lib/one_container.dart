import 'package:flutter/material.dart';

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
              SizedBox(height: 25,),
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purpleAccent],  // Start and end colors
                    begin: Alignment.topLeft,             // Starting point of the gradient
                    end: Alignment.bottomRight,           // Ending point of the gradient
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(5, 5),
                    ),],
                ),
                child: Center(
                    child: Text(
                        'Container 1',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),

                    )),
              ),
              SizedBox(height: 25,),
              Container(
                height: 300,
                width: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green, Colors.yellowAccent],  // Start and end colors
                    begin: Alignment.topLeft,             // Starting point of the gradient
                    end: Alignment.bottomRight,           // Ending point of the gradient
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: Offset(5, 5),
                    ),],
                ),
                child: Center(
                    child: Text(
                      'Container 2',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),

                    )),
              ),

            ],
          ),
        ),
        
      ),
    );
  }
}
