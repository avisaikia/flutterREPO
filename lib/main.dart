import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextInputSnackBar(),
    );
  }
}

class TextInputSnackBar extends StatefulWidget {
  const TextInputSnackBar({super.key});

  @override
  _TextInputSnackBarState createState() => _TextInputSnackBarState();
}

class _TextInputSnackBarState extends State<TextInputSnackBar> {
  final TextEditingController _controller = TextEditingController();

  void _showSnackBar(String text) {
    // Display a customized SnackBar with entered text
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orangeAccent,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(10),
        duration: Duration(seconds: 3),
        action: SnackBarAction(
          label: "UNDO",
          textColor: Colors.white,
          onPressed: () {
            // Handle the undo action
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Action undone!"),
                duration: Duration(seconds: 2),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" "),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField to input text
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Enter text",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            // Button to show SnackBar with input text
            ElevatedButton(
              onPressed: () {
                String enteredText = _controller.text;
                if (enteredText.isNotEmpty) {
                  _showSnackBar(enteredText);
                  _controller.clear(); // Clear the text field after showing SnackBar
                } else {
                  // Show a SnackBar for empty text input
                  _showSnackBar("Please enter some text!");
                }
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
    );
  }
}
