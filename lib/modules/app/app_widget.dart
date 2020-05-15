import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/intro',
      onGenerateRoute: Modular.generateRoute,
      key: Modular.navigatorKey,
      theme: ThemeData(
        primaryColor: Color(0xff120136),
        accentColor: Color(0xff035aa6),
        highlightColor: Color(0xff40bad5),
        splashColor: Color(0xfffcbf1e),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: GoogleFonts.roboto().copyWith(
            color: Color(0xff40bad5),
            fontSize: 32,
            fontWeight: FontWeight.normal,
          ),
          subtitle1: GoogleFonts.muli().copyWith(
            color: Colors.black26,
            fontSize: 14,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
