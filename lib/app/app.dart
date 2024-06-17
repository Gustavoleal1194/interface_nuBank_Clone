import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:replica_nubank/app/modules/home_page/home_page_screen.dart';
import 'package:replica_nubank/app/modules/home_page/theme.dart';
import 'package:replica_nubank/app/modules/home_page/theme_notifier.dart';
import 'package:replica_nubank/app/modules/load_screen/load_screen_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:
          themeNotifier.isDarkTheme ? MyThemes.darkTheme : MyThemes.lightTheme,
      initialRoute: '/',
      routes: {
        '/': (_) => const LoadScreenPage(),
        '/homepage': (_) => const HomePageScreen(),
      },
    );
  }
}
