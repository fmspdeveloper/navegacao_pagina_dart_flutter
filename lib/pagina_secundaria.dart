import 'package:flutter/material.dart';
import 'package:navegacao_pagina/paginaTerceira.dart';

import 'home.dart';

class paginaSecundaria extends StatefulWidget {
  const paginaSecundaria({super.key});

  @override
  State<paginaSecundaria> createState() => _paginaSecundariaState();
}

class _paginaSecundariaState extends State<paginaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("segunda pagina"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => paginaInicial()),
              );
            },
            child: Text("Home"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => terceiraPagina()),
              );
            },
            child: Text("pagina3"),
          ),
        ],
      )),
    );
  }
}
