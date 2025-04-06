import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Flutter',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Imagen de fondo
          Image.asset(
            'assets/images/fondo.jpg',
            fit: BoxFit.cover,
          ),
          // Contenido sobre la imagen
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
              Icon(Icons.flutter_dash, size: 80, color: Colors.white),
              SizedBox(height: 20),
              Text(
                'Mi Aplicación Flutter',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hello World',
                style: TextStyle(fontSize: 20, color: Colors.white,),
              ),
              Text(
                '¡Bienvenido a mi primera aplicación android!',
                style: TextStyle(fontSize: 18, color: Color.fromARGB(221, 197, 121, 195)),
              ),
            ],
            ),
          ),
        ],
      ),
    );
  }
}

