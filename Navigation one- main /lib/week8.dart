import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: Week8(title: 'Week 8: URL and Camera Lab'),
    );
  }
}

class Week8 extends StatefulWidget {
  const Week8({super.key, this.title});

  final String? title;

  @override
  // ignore: library_private_types_in_public_api
  _Week8State createState() => _Week8State();
}

class _Week8State extends State<Week8> {
  XFile? _imageFile;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await _picker.pickImage(source: source);
      if (pickedFile != null) {
        setState(() {
          _imageFile = pickedFile;
        });
      }
    } catch (e) {
      print('Image picker error: $e');
    }
  }

  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://pub.dev/packages/flutter_linkify');
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
        backgroundColor: Color.fromARGB(255, 33, 150, 243 ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Week 8 : Device Features',
                style: TextStyle(color: Colors.black, fontSize: 22.0),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                  'Week 8 \n ',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                  
            ],
            ),
            const Divider(
              color: Colors.black
            ),
            ElevatedButton(
              onPressed: _launchURL,
              child: const Text('Visit Flutter Website'),
            ),
            const SizedBox(height: 16.0),
            Linkify(
              onOpen: (link) async {
                final Uri url = Uri.parse(link.url);
                if (!await launchUrl(url)) {
                  throw 'Could not launch ${link.url}';
                }
              },
              text: 'Click above for more information!',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            _imageFile != null
                ? Image.file(File(_imageFile!.path))
                : const Text('No image selected.'),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => _pickImage(ImageSource.gallery),
            heroTag: 'galleryButton',
            tooltip: 'Pick from Gallery',
            child: const Icon(Icons.photo_library),
          ),
          const SizedBox(height: 16.0),
          FloatingActionButton(
            onPressed: () => _pickImage(ImageSource.camera),
            heroTag: 'cameraButton',
            tooltip: 'Take a Picture',
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }
}