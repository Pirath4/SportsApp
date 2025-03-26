import 'package:flutter/material.dart';

import 'package:flutter_app_teste/models/login_view_model.dart';

class EsporteView extends StatefulWidget {
  @override
  _EsporteViewState createState() => _EsporteViewState();
}

class _EsporteViewState extends State<EsporteView> {
  final EsporteViewModel viewModel = EsporteViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Friendly Sports'),
        centerTitle: true,

        
      ),
    );
  }
}