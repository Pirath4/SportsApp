import 'package:flutter/material.dart';

class SobreNosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre Nós"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Bem-vindo à página Sobre Nós!",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}