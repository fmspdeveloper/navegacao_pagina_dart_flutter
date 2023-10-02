import 'package:flutter/material.dart';
import 'package:navegacao_pagina/pagina_secundaria.dart';

import 'home.dart';

class terceiraPagina extends StatefulWidget {
  const terceiraPagina({super.key});

  @override
  State<terceiraPagina> createState() => _terceiraPaginaState();
}

class _terceiraPaginaState extends State<terceiraPagina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("terceira Pagina"),
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
                MaterialPageRoute(builder: (context) => paginaSecundaria()),
              );
            },
            child: Text("pagina2"),
          ),
        ],
      )),
    );
  }
}
