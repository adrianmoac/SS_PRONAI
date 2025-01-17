import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:verificacion/verificacion.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.nunitoTextTheme(Theme.of(context).textTheme)),
      initialRoute: "home",
      routes: {
        "home": (_) => const Verificacion(),
      },
    );
  }
}
