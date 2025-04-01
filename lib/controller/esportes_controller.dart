import 'package:flutter/material.dart';
import 'package:flutter_app_teste/view/futebol_x10_view.dart';

import '../models/class_view_model.dart';
import '../view/futebol_1view.dart';
import '../view/voleibol_Page.dart';


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

class QuadrasFutebolController extends ChangeNotifier{

  final List<QuadrasFutebolViewModel> _quadras = [
    QuadrasFutebolViewModel(nome: 'X10', pagina: QuadraX10View()),
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