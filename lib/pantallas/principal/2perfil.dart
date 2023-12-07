// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildLeftColumn(),
              const SizedBox(width: 16.0),
              _buildRightColumn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeftColumn() {
    return Container(
      width: 130.0,
      height: 130.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(75.0),
        gradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.purple, Colors.orange],
        ),
      ),
      child: const Center(
        child: CircleAvatar(
          radius: 60.0,
          backgroundImage: AssetImage('assets/ImagenPerfil.jpg'),
        ),
      ),
    );
  }

  Widget _buildRightColumn() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    _buildInfoColumn('2.290', Colors.black, 20.0, true),
                    _buildInfoColumn('34.5K', Colors.black, 20.0, true),
                    _buildInfoColumn('569', Colors.black, 20.0, true),
                  ],
                ),
                Row(
                  children: <Widget>[
                    _buildInfoColumn('posts', Colors.grey, 15.0, false),
                    _buildInfoColumn('followers', Colors.grey, 15.0, false),
                    _buildInfoColumn('following', Colors.grey, 15.0, false),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          _buildButtonRow(),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(String title, Color color, double size, bool isBold) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: color,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              fontSize: size,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            child: const Text('Message'),
          ),
        ),
        const SizedBox(width: 4.0),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.person),
            label: const Text(''),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 2.0),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_drop_down),
            label: const Text(''),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
