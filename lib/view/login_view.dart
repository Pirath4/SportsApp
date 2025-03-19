import 'package:flutter/material.dart';
import '../models/login_viewmodel.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginViewModel viewModel = LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friendly Sports'),
        centerTitle: true,
      ),

      backgroundColor: Colors.blue[50], // Cor de fundo
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bem vindo ao Friendly Sports",
              ),

              // Usando Row para colocar os ícones em linha
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Centraliza os ícones
                children: [
                  Icon(Icons.sports_soccer, size: 80, color: Colors.blue),
                  SizedBox(width: 20), // Espaço entre os ícones

                  Icon(Icons.sports_volleyball, size: 80, color: Colors.blue),
                  SizedBox(width: 20), // Espaço entre os ícones

                  Icon(Icons.sports_basketball, size: 80, color: Colors.blue),
                ],
              ),
              SizedBox(height: 20),
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
                  String message = viewModel.fazerLogin();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(message)),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text("Login", style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}