import 'package:flutter/material.dart';

class LoginViewModel {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  String fazerLogin() {
    String email = emailController.text;
    String senha = senhaController.text;

    if (email == "felipe" && senha == "123") {
      return "Login realizado com sucesso!";
    } else {
      return "E-mail ou senha incorretos!";
    }
  }
}

class CadastroViewModel {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController nascimentoController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();

  String fazerCadastro() {
    String nome = nomeController.text;
    String email = emailController.text;
    String senha = senhaController.text;
    String nascimento = nascimentoController.text;
    String telefone = telefoneController.text;

    // Lógica de cadastro
    if (nome.isNotEmpty && email.isNotEmpty && senha.isNotEmpty) {
      return "Cadastro realizado com sucesso!";
    } else {
      return "Preencha todos os campos!";
    }
  }
}

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