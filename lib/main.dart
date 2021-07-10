import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_resume/pages/home_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter Demo",
        theme: ThemeData.dark()
            .copyWith(textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
        home: HomePage());
  }
}
