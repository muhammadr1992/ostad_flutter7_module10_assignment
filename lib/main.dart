import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red, // Text color changed to red
              fontWeight: FontWeight.bold, // Text made bold
              fontSize: 24, // Adjust font size if needed
            ),
          ),
          Text(
            'Welcome to Flutter!',
            style: TextStyle(fontSize: 20), // Optional: Adjust font size
          ),
          SizedBox(height: 20), // Add some spacing between the text and image
          Image.asset(
            'assets/images/IMG-20240814-WA0062.jpg', // Ensure the image path is correct
            width: 200, // Adjust the width of the image
            height: 200, // Adjust the height of the image
          ),
          SizedBox(height: 20), // Add some spacing between the image and button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Button color changed to green
            ),
            onPressed: () {
              final snackBar = SnackBar(content: Text('Button Pressed!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: Text('Press me'),
          ),
        ],
      ),
    );
  }
}