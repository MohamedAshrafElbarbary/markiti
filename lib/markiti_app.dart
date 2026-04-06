import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiti_app/core/router/app_router.dart';
import 'package:markiti_app/features/splash/view/splash_view.dart';

class MarkitiApp extends StatelessWidget {
  const MarkitiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      initialRoute: SplashView.routeName,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
