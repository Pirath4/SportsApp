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
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  String fazerCadastro() {
    String email = emailController.text;
    String senha = senhaController.text;

    if (email == "felipe" && senha == "123") {
      return "Login realizado com sucesso!";
    } else {
      return "E-mail ou senha incorretos!";
    }
  }
}