// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import '/view/login_view.dart';



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
      },
    );
  }
}