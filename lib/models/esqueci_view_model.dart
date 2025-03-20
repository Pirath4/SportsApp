import 'package:flutter/material.dart';

class EsqueciViewModel {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  String esqueciCadastro() {
    String nome = nomeController.text;
    String email = emailController.text;

    // Lógica de cadastro
    if (nome.isNotEmpty && email.isNotEmpty) {
      return "Cadastro realizado com sucesso!";
    } else {
      return "Preencha todos os campos!";
    }
  }
}