import 'package:admtm_app/screens/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('pt', 'PT')],
        path: 'lang', // <-- change patch to your
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ADMTM App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        dividerColor: Color.fromRGBO(0, 0, 0, 0.5),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.white),
        ),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Home(title: 'ADMTM App Home Page'),
    );
  }
}
