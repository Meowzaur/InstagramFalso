// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  final List<String> imagenes = [
    'Imagen1.jpg',
    'Imagen2.jpg',
    'Imagen3.jpg',
    'Imagen4.jpg',
    'Imagen5.jpg',
    'Imagen6.jpg',
    'Imagen7.jpg',
    'Imagen8.jpg',
    'Imagen9.jpg',
    'Imagen10.jpg',
  ];

  Galeria({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: imagenes.length,
        itemBuilder: (context, index) {
          return Image.asset(
            'assets/${imagenes[index]}',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
