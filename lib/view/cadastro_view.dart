import 'package:flutter/material.dart';

import '../models/login_view_model.dart';

class CadastroView extends StatefulWidget {
  @override
  _CadastroViewState createState() => _CadastroViewState();
}

class _CadastroViewState extends State<CadastroView> {
  final CadastroViewModel viewModel = CadastroViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friendly Sports'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Cadastro",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              TextField(
                controller: viewModel.nomeController,
                decoration: InputDecoration(
                  labelText: "Nome",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              SizedBox(height: 15),
              TextField(
                controller: viewModel.telefoneController,
                decoration: InputDecoration(
                  labelText: "Telefone",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.add_ic_call),
                ),
              ),

              SizedBox(height: 15),
              TextField(
                controller: viewModel.nascimentoController,
                decoration: InputDecoration(
                  labelText: "Data de nascimento",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.cake),
                ),
              ),

              SizedBox(height: 15),
              TextField(
                controller: viewModel.emailController,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),

              SizedBox(height: 15),
              TextField(
                controller: viewModel.senhaController,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                obscureText: true,
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  String message = viewModel.fazerCadastro();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text("Cadastrar", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}