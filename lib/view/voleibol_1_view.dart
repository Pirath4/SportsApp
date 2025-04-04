import 'package:flutter/material.dart';

class VoleibolPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
                "Quadras",
                style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
            ),
        ),
        flexibleSpace: Container( 
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(232, 248, 245, 67),
                Color.fromARGB(206, 195, 233, 28),
              ],
            ),
          ),
        ),
      ),

      //cor do fundo
      backgroundColor: Colors.green[50],
      body: Center(child: Text("Página do Voleibol")),
    );
  }
}