import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_teste/view/1_4_esportes_view.dart';
import 'package:flutter_app_teste/view/config_view.dart';
import 'package:flutter_app_teste/view/perfil_view.dart';

import 'view/1_1_login_view.dart';

void main() {
  runApp(
    //Carregar o plugin device preview
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'navegacao',
      initialRoute: 'home',
      routes: {
        'home': (context) => LoginView(), 
        'perfil': (context) => PerfilView(),
        'configuracoes': (context) => ConfigView(),
        'esportes': (context) => EsportesView(),
      },
    );
  }
}