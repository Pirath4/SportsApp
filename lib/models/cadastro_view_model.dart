import 'package:flutter/material.dart';

class CadastroViewModel {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  String fazerCadastro() {
    String nome = nomeController.text;
    String email = emailController.text;
    String senha = senhaController.text;

    // Lógica de cadastro
    if (nome.isNotEmpty && email.isNotEmpty && senha.isNotEmpty) {
      return "Cadastro realizado com sucesso!";
    } else {
      return "Preencha todos os campos!";
    }
  }
}