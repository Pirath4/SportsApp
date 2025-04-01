import 'package:flutter/material.dart';

import '../controller/esportes_controller.dart';

class FutebolView extends StatelessWidget {
    final QuadrasFutebolController controller = QuadrasFutebolController();

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Futebol', style: TextStyle(color: Colors.black, fontSize: 18),),
            Text('Aonde vamos jogar hoje?'),
          ],
        ),
      ),
      
      // Cor do fundo
      backgroundColor: Colors.blue[50],
      
      //
      body: ListView.builder(
        itemCount: controller.quadras.length,
        itemBuilder: (context, index) {
          final item = controller.quadras[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(16.0),
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