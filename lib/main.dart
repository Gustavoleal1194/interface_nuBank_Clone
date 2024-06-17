import 'package:flutter/material.dart';
import 'package:replica_nubank/app/app.dart';
import 'package:provider/provider.dart';
import 'package:replica_nubank/app/modules/home_page/theme.dart';
import 'package:replica_nubank/app/modules/home_page/theme_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(MyThemes.lightTheme, false),
      child: const MyApp(),
    ),
  );
}
