import 'package:flutter/material.dart';
import 'dart:io';

class DisplaypictureScreen  extends StatelessWidget{
  final String imagePath;

  const DisplaypictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Display the Picture - 2241720033')),
      body: Image.file(File(imagePath)),
    );
  }
}