import 'package:flutter/material.dart';

class VoleibolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Voleibol")),

      //cor do fundo
      backgroundColor: Colors.green[50],
      
      body: Center(child: Text("Página do Voleibol")),
    );
  }
}