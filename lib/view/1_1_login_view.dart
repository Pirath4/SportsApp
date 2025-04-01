import 'package:flutter/material.dart';
import 'package:flutter_app_teste/view/1_4_esportes_view.dart';

import '../models/class_view_model.dart';

import '1_2_cadastro_view.dart';
import '1_3_esqueci_view.dart';

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
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Bem vindo ao Friendly Sports",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Ícones de esportes
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sports_soccer, size: 80, color: Colors.blue),
                  SizedBox(width: 20),
                  Icon(Icons.sports_volleyball, size: 80, color: Colors.blue),
                  SizedBox(width: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Alinha os botões com espaço entre eles
                children: [

                  // Botão de Login
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 5), // Espaçamento entre os botões
                      child: ElevatedButton(
                        onPressed: () {
                          bool resultado = viewModel.fazerLogin();
                          String message;
                          if ( resultado ){
                            message = "Login realizado com sucesso!";
                            Navigator.push(context, MaterialPageRoute(builder: (context) => EsportesView()),);
                          }else{
                            message = "E-mail ou senha incorretos!";
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(message)),
                          );
                          
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        child: Text("Login", style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),

                  // Botão de Cadastro
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5), // Espaçamento entre os botões
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CadastroView()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                        ),
                        child: Text("Cadastro", style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),

                  // Botão de "Esqueci a senha"
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5), // Espaçamento entre os botões
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EsqueciView()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        ),
                        child: Text("Esqueci a senha",
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
