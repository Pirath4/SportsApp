import 'package:flutter/material.dart';
import 'package:flutter_app_teste/view/futebol_x10_1_view.dart';

import '../models/class_view_model.dart';

import '../view/futebol_1_view.dart';
import '../view/futebol_xavier_1_view.dart';

import '../view/voleibol_1_view.dart';


class QuadrasFutebolViewModel {
  final String nome;
  final String end;
  final String qtdquadras;
  final Widget pagina;
  final String imagemUrl; // Novo campo para a URL da imagem

  QuadrasFutebolViewModel({
    required this.nome,
    required this.end,
    required this.qtdquadras,
    required this.pagina,
    required this.imagemUrl, // Inicialize o campo
  });
}




class EsportesController extends ChangeNotifier{
  
 
  final List<EsportesViewModel> _esportes = [
    EsportesViewModel(nome: 'Futebol', pagina: FutebolView()),
    EsportesViewModel(nome: 'Voleibol', pagina: VoleibolPage()),
  ];

  bool _visualizarLista = true;

  List<EsportesViewModel> get esportes => _esportes;
  bool get visualizarLista => _visualizarLista;

  void alterarVisualizacao(valor){
    _visualizarLista = valor;
    notifyListeners();
  }

    void removerItem(index){
    _esportes.removeAt(index);
    notifyListeners();

}
}

//-------------------------------------------------------
class QuadrasFutebolController extends ChangeNotifier{

  final List<QuadrasFutebolViewModel> _quadras = [
    QuadrasFutebolViewModel(
     nome: 'X10 Complexo Esportivo',
     end: 'Av. Patriarca, 5050 - Jardim Monte Carlo, Ribeirão Preto - SP', 
     qtdquadras: '10 quadras', 
     pagina: QuadraX10View(),
     imagemUrl: 
     'https://assets.goal.com/images/v3/blt55456c6aa445f207/1bb5dc6e3a3c4a9a803b03848f20eb4a7b36df0b.jpg?auto=webp&format=pjpg&width=3840&quality=60',
     ),
     
    QuadrasFutebolViewModel(
      nome: 'Quadra de esportes Xavier', 
      end: 'Av. Patriarca, 2686 - Jardim Bela Vista, Ribeirão Preto - SP', 
      qtdquadras: '1 quadra', 
      pagina: QuadraXavierView(),
      imagemUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC2zQqTwlxbltqjhh9MhovXXkb6xhUISkdRqVboe6LiSOle0RoHIYJa3NmyEUXccoTZ7I&usqp=CAU',
      ),
  ];

  bool _visualizarLista = true;

  List<QuadrasFutebolViewModel> get quadras => _quadras;
  bool get visualizarLista => _visualizarLista;

  void alterarVisualizacao(valor){
    _visualizarLista = valor;
    notifyListeners();
  }

    void removerItem(index){
    _quadras.removeAt(index);
    notifyListeners();

}
}