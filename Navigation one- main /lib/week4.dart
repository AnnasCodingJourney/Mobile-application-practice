import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 229, 115, 115),
      ),
      home: const Week4(title: 'week4'),
    );
  }
}

class Week4 extends StatefulWidget {
  const Week4({super.key, required this.title});
  final String title;
  @override
  State<Week4> createState() => _Week4State();
}

class _Week4State extends State<Week4> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 154, 154),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Content page'),
            ),
            //add content here
          ],
        ),
      ),
    );
  }
}
