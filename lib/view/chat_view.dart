import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  final String quadraNome; // Nome da quadra selecionada

  ChatView({required this.quadraNome});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat - $quadraNome'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Bem-vindo ao chat da quadra $quadraNome!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}