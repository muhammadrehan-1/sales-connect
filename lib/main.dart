import 'package:connect_sales/on_board_screens/on_board1.dart';
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
      title: 'Sales Connect',
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.mulishTextTheme(),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(1, 228, 110, 0),
        ),
        useMaterial3: true,
      ),
      home: const OnBoard(),
    );
  }
}
