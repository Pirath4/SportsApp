import 'package:flutter/material.dart';

class BasqueteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basquete"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Bem-vindo à página de Basquete!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}