import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Super Chess',
      theme: ThemeData(
        primaryColor: new Color(0xFFD50000),
      ),
      home: HomeScreen(),
    );
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playing Super Chess"),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Super Chess"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(
            "Play",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(primary: new Color(0xFFD50000)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameScreen()),
            );
          },
        ),
      ),
    );
  }
}
