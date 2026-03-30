import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markiti_app/core/const/app_router.dart';
import 'package:markiti_app/core/function/cache_helper.dart';
import 'package:markiti_app/core/services/servise_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  servserLocator();
  runApp(const MarkitiApp());
}

class MarkitiApp extends StatelessWidget {
  const MarkitiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}


// to do 
// navigate to home view if user signin onboarding (sahred pref)