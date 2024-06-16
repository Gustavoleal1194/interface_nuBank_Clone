import 'package:flutter/material.dart';
import 'package:replica_nubank/app/modules/home_page/home_page_screen.dart';
import 'package:replica_nubank/app/modules/load_screen/load_screen_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      initialRoute: '/',
      routes: {
        '/': (_) => const LoadScreenPage(),
        '/homepage': (_) => const HomePageScreen(),
      },
    );
  }
}
