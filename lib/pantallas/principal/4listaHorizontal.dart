import 'package:flutter/material.dart';

class ListaHorizontal extends StatelessWidget {
  final List<String> imagenes = [
    'ImagenCocktail.jpg',
    'ImagenIceCream.jpg',
    'ImagenCoffee.jpg',
    'ImagenCake.jpg',
    'ImagenDecoration.jpg',
    'ImagenDog.jpg',
  ];

  final List<String> textos = [
    'Cocktails',
    'Ice Creams',
    'Coffees',
    'Cakes',
    'Decorating',
    'Dogs',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imagenes.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(2.0),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black, // Color del borde
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/${imagenes[index]}'),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                textos[index],
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
        );
      },
    );
  }
}
