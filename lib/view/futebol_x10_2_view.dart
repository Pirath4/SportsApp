import 'package:flutter/material.dart';

class QuadraDetalhesView extends StatelessWidget {
  final String nome;
  final String endereco;
  final String qtdQuadras;
  final String imagemUrl;

  QuadraDetalhesView({
    required this.nome,
    required this.endereco,
    required this.qtdQuadras,
    required this.imagemUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagem no topo
            Image.network(
              imagemUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 250,
                  color: Colors.grey[300],
                  child: Icon(Icons.error, size: 50), // Ícone de erro
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nome da quadra
                  Text(
                    nome,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Endereço
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          endereco,
                          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // Quantidade de quadras
                  Row(
                    children: [
                      Icon(Icons.sports_soccer, color: Colors.blue),
                      SizedBox(width: 8),
                      Text(
                        qtdQuadras,
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Ícones de telefone e localização
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Ação para o telefone
                        },
                        icon: Icon(Icons.phone),
                        label: Text('Telefone'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          // Ação para abrir o mapa
                        },
                        icon: Icon(Icons.map),
                        label: Text('Localização'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}