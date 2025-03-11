import 'package:flutter/material.dart';
import 'package:flutter_application_1/week4.dart';
import 'package:flutter_application_1/week5.dart';
import 'package:flutter_application_1/week6.dart';
import 'package:flutter_application_1/week7.dart';
import 'package:flutter_application_1/week8.dart';
import 'package:flutter_application_1/week9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contentpage',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Content of CS991-Mobile Application'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            // week 4:

            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.red[300],  
                height: double.infinity,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Week4(title:'week4',)));
                // Action to be performed when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[300],  // Red background for the button
                    ),
              child: Text('Week 4', style: TextStyle(fontSize: 40.0), selectionColor: Colors.black,),
            ),
                ),
              ),
            ),

            // Week 5: 

            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.orange[300],
                height: double.infinity,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Week5(title:'week5',)));
                // Action to be performed when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[300],  // Red background for the button
                    ),
              child: Text('Week 5', style: TextStyle(fontSize: 40.0), selectionColor: Colors.black,),
            ),
                ),
              ),
            ),

            //Week 6:
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.yellow[300],
                height: double.infinity,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Week6(title:'week6',)));
                // Action to be performed when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[300],  // Red background for the button
                    ),
              child: Text('Week 6', style: TextStyle(fontSize: 40.0), selectionColor: Colors.black,),
            ),
                ),
              ),
            ),

            //Week 7:

            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.green[200],
                height: double.infinity,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Week7(title:'Week 7 FLutter Forms Lab',)));
                // Action to be performed when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[200],  
                    ),
              child: Text('Week 7', style: TextStyle(fontSize: 40.0), selectionColor: Colors.black,),
            ),
                ),
              ),
            ),

            // Week 8:
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.blue[200],
                height: double.infinity,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Week8(title:'Week 8 URL and Camera Lab')));
                // Action to be performed when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[200],  
                    ),
              child: Text('Week 8', style: TextStyle(fontSize: 40.0), selectionColor: Colors.black,),
            ),
                ),
              ),
            ),

            // Week 9:
            
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.indigo[200],
                height: double.infinity,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Week9(title:'Week 9')));
                // Action to be performed when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo[200],  
                    ),
              child: Text('Week 9', style: TextStyle(fontSize: 40.0), selectionColor: Colors.black,),
            ),
                ),
              ),
            ),
            
            
            //Week 10:

            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.purple[200],
                height: double.infinity,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("Week 10", style: TextStyle(fontSize: 40.0),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


