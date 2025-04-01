import 'package:flutter/material.dart';
import 'package:flutter_app_teste/view/futebol_x10_1_view.dart';

import '../models/class_view_model.dart';

import '../view/futebol_1_view.dart';
import '../view/futebol_xavier_1_view.dart';

import '../view/voleibol_1_view.dart';


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
    QuadrasFutebolViewModel(nome: 'X10 Complexo Esportivo', end: 'Av. Patriarca, 5050 - Jardim Monte Carlo, Ribeirão Preto - SP', qtdquadras: '10 quadras', pagina: QuadraX10View()),
    QuadrasFutebolViewModel(nome: 'Quadra de esportes Xavier', end: 'Av. Patriarca, 2686 - Jardim Bela Vista, Ribeirão Preto - SP', qtdquadras: '1 quadra', pagina: QuadraXavierView()),
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