import 'package:flutter/material.dart';
import 'package:navegacao_pagina/pagina_secundaria.dart';
import 'package:navegacao_pagina/paginaTerceira.dart';

class paginaInicial extends StatefulWidget {
  const paginaInicial({super.key});

  @override
  State<paginaInicial> createState() => _paginaInicialState();
}

class _paginaInicialState extends State<paginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => paginaSecundaria()),
              );
            },
            child: Text("pagina2"),
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
