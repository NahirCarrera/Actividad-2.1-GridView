import 'package:flutter/material.dart';
import 'view/coche_view.dart';
import 'view/pantalla_bienvenida.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gestión de Contactos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: VistaCoches(),
    );
  }
}
