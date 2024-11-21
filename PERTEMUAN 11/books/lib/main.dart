import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farrel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = "";

  Future<void> fetchData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/ExALEQAAQBAJ';
    final url = Uri.https(authority, path);

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body) as Map<String, dynamic>;
        final title = data['volumeInfo']['title'] as String;
        setState(() {
          result = 'Judul Buku: $title';
        });
      } else {
        // Handle error (e.g., print message, display error UI)
        print('Error: Failed to load data (status code: ${response.statusCode})');
      }
    } catch (e) {
      // Handle general exceptions
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
          children: [
            ElevatedButton(
              onPressed: fetchData,
              child: const Text('GO!'),
            ),
            const SizedBox(height: 20), // Add spacing between button and text
            Text(result),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}