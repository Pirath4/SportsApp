import 'package:flutter/material.dart';

class LoginViewModel {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  String fazerLogin() {
    String email = emailController.text;
    String senha = senhaController.text;

    if (email == "teste@email.com" && senha == "123456") {
      return "Login realizado com sucesso!";
    } else {
      return "E-mail ou senha incorretos!";
    }
  }
}