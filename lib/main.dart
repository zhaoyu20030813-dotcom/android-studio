// update
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.green,

        textTheme: GoogleFonts.aladinTextTheme(
          ThemeData.light().textTheme,
        ),
      ),

      home: const HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text('Welcome to Flutter - 조우'),

        actions: const [
          Icon(Icons.shopping_cart, color: Colors.pink,),
          SizedBox(width: 16),
          Icon(Icons.search, color: Colors.red),
          SizedBox(width: 16),
          Icon(Icons.settings, color: Colors.purple),
          SizedBox(width: 12),
        ],
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: GoogleFonts.aladin(
            fontSize: 48,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.italic,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}