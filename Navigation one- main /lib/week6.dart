import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const Week6(title: 'week6 API and Firebase lab'),
    );
  }
}

class Week6 extends StatefulWidget {
  const Week6({super.key, required this.title});
  final String title;
  @override
  State<Week6> createState() => _Week6State();
}

class _Week6State extends State<Week6> {
  String imageUrl = '';

  // Function to fetch a random dog image
  Future<void> fetchDogImage() async {
    final response = await http.get(Uri.parse('https://dog.ceo/api/breeds/image/random'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        imageUrl = data['message']; // Extract image URL from JSON response
      });
    } else {
      throw Exception('Failed to load dog image');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDogImage(); // Load an image on startup
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 235, 59),
        title: Text('Week 6: HTTP & Firebase'),
      ),
      body: Center(
        child: imageUrl.isNotEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                  'week 6 \n HTTP a Firebase',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
            ],
            ),
            const Divider(
              color: Colors.black
            ),
                  Image.network(imageUrl),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: fetchDogImage,
                    child: Text('new dog'),
                  ),
                ],
              )
            : CircularProgressIndicator(), // Show a loading indicator while fetching
      ),
    );
  }
}

