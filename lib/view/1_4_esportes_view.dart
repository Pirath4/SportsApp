import 'package:flutter/material.dart';

import '../controller/esportes_controller.dart';

class EsportesView extends StatelessWidget {
  final EsportesController controller = EsportesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
              child: Text(
              "Esportes", style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
      // Cor do fundo
      backgroundColor: Colors.blue[50],
      
      //
      body: ListView.builder(
        itemCount: controller.esportes.length,
        itemBuilder: (context, index) {
          final item = controller.esportes[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(50.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => item.pagina),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.nome,
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}