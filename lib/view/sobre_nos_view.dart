import 'package:flutter/material.dart';

class SobreNosView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sobre Nós",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,

      ),
      body: SingleChildScrollView( // Permite rolagem caso o texto seja muito longo
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Adiciona espaçamento lateral
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
            children: [
              SizedBox(height: 20), // Adiciona um espaçamento no topo
              Text(
                "Bem-vindo à página Sobre Nós!",
                textAlign: TextAlign.center, // Centraliza o texto
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // Espaço entre os textos
              Text(
                "Olá, nós chamamos Bernardo Marques e Felipe Marques, graduandos em Análise e Desenvolvimento pela FATEC - RP. Nosso objetivo com esse aplicativo é facilitar o processo de aluguel de quadras esportivas, e conectar as pessoas que realizam a pratica de esportes. Este é nosso projeto para a aula de Programação para dispositivos móveis, e será nosso TCC e espero que também o app principal da nossa futura empresa Marques Developers",
                textAlign: TextAlign.center, // Centraliza o texto
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}