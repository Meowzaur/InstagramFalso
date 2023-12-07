import 'package:flutter/material.dart';
import 'principal/1cabecera.dart';
import 'principal/2perfil.dart';
import 'principal/3biografia.dart';
import 'principal/4listaHorizontal.dart';
import 'principal/5botonesEIconos.dart';
import 'principal/6galeria.dart';

class Principal extends StatelessWidget {
  const Principal({Key? key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CabeceraPrincipal(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Expanded(
            child: Perfil(),
          ),
          const Expanded(
            child: Biografia(),
          ),
          Expanded(
            child: ListaHorizontal(),
          ),
          const Expanded(
            child: BotonesEIconos(),
          ),
          //Expanded(
          //  child: Galeria(),
          //),
        ],
      ),
    );
  }
}
