import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umma_app/screens/azkar_screen/azakr_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(color: Colors.white),
        accentColor: Color(0xff558B2F),
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AzakrScreen(),
    );
  }
}
