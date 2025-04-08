import 'package:flutter/material.dart';

//------------------------------------------------------------
class LoginViewModel {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  bool fazerLogin() {
    String email = emailController.text;
    String senha = senhaController.text;

    if (email == "1" && senha == "2") {
      return true;
    } else {
      return false;
    }
  }
}

//------------------------------------------------------------
class CadastroViewModel {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();
  final TextEditingController nascimentoController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();

  String fazerCadastro() {
    String nome = nomeController.text;
    String telefone = telefoneController.text;
    String nascimento = nascimentoController.text;
    String email = emailController.text;
    String senha = senhaController.text;
    
    // Lógica de cadastro
    if (nome.isNotEmpty && telefone.isNotEmpty && nascimento.isNotEmpty && email.isNotEmpty && senha.isNotEmpty) {
      return "Cadastro realizado com sucesso!";
    } else {
      return "Preencha todos os campos!";
    }
  }
}

//------------------------------------------------------------
class EsqueciViewModel {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  String esqueciCadastro() {
    String nome = nomeController.text;
    String email = emailController.text;

    // Lógica de cadastro
    if (nome.isNotEmpty && email.isNotEmpty) {
      return "Codigo enviado ao email!";
    } else {
      return "Preencha todos os campos!";
    }
  }
}

//------------------------------------------------------------
class EsportesViewModel {
  final String nome;
  final Widget pagina;

  EsportesViewModel({required this.nome, required this.pagina});
}

//------------------------------------------------------------
class QuadrasFutebolViewModel {
  final String nome;
  final String end;
  final String qtdquadras;
  final Widget pagina;

  QuadrasFutebolViewModel({required this.nome, required this.end, required this.qtdquadras, required this.pagina,});
}

//------------------------------------------------------------
class QuadrasVoleibolViewModel {
  final String nome;
  final String end;
  final String qtdquadras;
  final Widget pagina;
  final String imagemUrl;

  QuadrasVoleibolViewModel({required this.nome, 
  required this.end, 
  required this.qtdquadras, 
  required this.pagina,
  required this.imagemUrl,
  });
}