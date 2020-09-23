import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umma_app/screens/azkar_screen/azakar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
        accentColor: Color(0xff558B2F),
        primaryColor: Colors.white,
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ).copyWith(
          headline1: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Color(0xFF3D3D3D),
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          headline2: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 17.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          headline3: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Color(0xFF3D3D3D),
              fontSize: 17.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle1: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Color(0xFF558B2F),
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          bodyText1: GoogleFonts.openSans(
            textStyle: TextStyle(
              color: Color(0xFF3C3C43),
              fontSize: 15.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: AzakrScreen(),
    );
  }
}
