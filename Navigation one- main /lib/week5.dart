import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const Week5(title: 'week5'),
    );
  }
}

class Week5 extends StatefulWidget {
  const Week5({super.key, required this.title});
  final String title;

  @override
  State<Week5> createState() => _Week5State();
}

class _Week5State extends State<Week5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 204, 128),
        title: Text(widget.title),
        actions: [
          // Add the PopupMenuButton in the AppBar
          PopupMenuButton<String>(
            onSelected: (String result) {
              if (result == 'Help') {
                // If 'Option 1' is selected, navigate to another screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage(title:"Contentpage")),
                );
              }
              if (result=='Log out') {
                // If another option is selected, show a dialog
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(result),  // Show the selected option in the dialog
                    content: const Text('Are you sure you want to logout?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Dismiss'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('logout'),
                      ),
                    ],
                  ),
                );
              }
              if (result=='Settings') {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text(result),  // Show the selected option in the dialog
                    content: const Text('Do you want to change your password?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Dismiss'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('yes'),
                      ),
                    ],
                  ),
                );
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'Settings',
                child: Row(
                  children: const [
                    Icon(Icons.settings),
                    SizedBox(width: 10),
                    Text('Settings'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'Help',
                child: Row(
                  children: const [
                    Icon(Icons.help),
                    SizedBox(width: 10),
                    Text('Help'),
                  ],
                ),
              ),
              PopupMenuItem<String>(
                value: 'Log out',
                child: Row(
                  children: const [
                    Icon(Icons.login),
                    SizedBox(width: 10),
                    Text('log out'),
                  ],
                ),
              ),
            ],
          ),
        ],
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
            FloatingActionButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: const Text("Dialog Title"),
                      children: [
                        Column(
                          children: [
                            const Divider(),
                            const Text("This is a standard dialog box."),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Use SimpleDialogOption for choices
                                SimpleDialogOption(
                                  onPressed: () {
                                    Navigator.of(context).pop('OK');
                                  },
                                  child: const Text('Cancel'),
                                ),
                                SimpleDialogOption(
                                  onPressed: () {
                                    Navigator.of(context).pop('Cancel');
                                  },
                                  child: const Text('Ok'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Icon(Icons.apple_outlined),
            ),
            // Add another ElevatedButton below the FloatingActionButton
            ElevatedButton(
      onPressed:
          () => showDialog<String>(
            context: context,
            builder:
                (BuildContext context) => AlertDialog(
                  title: const Text('Alert!'),
                  content: const Text('This is an alert dialog box.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Dismiss'),
                      child: const Text('Dismiss'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Proceed'),
                      child: const Text('Proceed'),
                    ),
                  ],
                ),
          ),
      child: const Text('Show Dialog'),
    )
          ],
        ),
      ),
    );
  }
}
