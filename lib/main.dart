import 'package:flutter/material.dart';
import 'package:islam_app_c10_sun_4pm/config/application_theme_manager.dart';
import 'package:islam_app_c10_sun_4pm/layout/layout_view.dart';
import 'package:islam_app_c10_sun_4pm/quran/page/quran_details.dart';
import 'package:islam_app_c10_sun_4pm/splash/page/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationThemeManager.lightTheme,
      themeMode: ThemeMode.light,
      title: "Islami App",
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayOutView.routeName: (context) => const LayOutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}
