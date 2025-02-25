import 'package:exercicio_componentes_flutter/constants/navigation_const.dart';
import 'package:exercicio_componentes_flutter/l10n/app_localizations.dart';
import 'package:exercicio_componentes_flutter/pages/exercicio_um/exercicio_um.dart';
import 'package:exercicio_componentes_flutter/pages/home_page.dart';
import 'package:exercicio_componentes_flutter/pages/mockup/mockup_page.dart';
import 'package:exercicio_componentes_flutter/pages/mockup/money_ander_control_page.dart';
import 'package:exercicio_componentes_flutter/pages/mockup/tinder_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: NavigationConst.navigationHome,
      routes: {
        NavigationConst.navigationHome: (context) => const HomePage(),
        NavigationConst.navigationExercicioUm: (context) => const ExercicioUm(),
        NavigationConst.navigationMockup: (context) => const MockupPage(),
        NavigationConst.navigationTinder: (context) => const TinderPage(),
        NavigationConst.navigationMoney: (context) => const MoneyAnderControlPage(),
      },
    );
  }
}
