// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BotonesEIconos extends StatelessWidget {
  const BotonesEIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Fila superior con texto
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Shop',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'Call',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'Email',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.grid_on,
              color: Colors.blue,
            ),
            Icon(Icons.check_box_outline_blank),
            Icon(Icons.account_circle),
          ],
        ),
      ],
    );
  }
}
