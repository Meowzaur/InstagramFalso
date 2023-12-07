import 'package:flutter/material.dart';

class Creditos extends StatelessWidget {
  const Creditos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Créditos'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Autor:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Pablo Bruno Mimbrera',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
