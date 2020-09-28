import 'package:admtm_app/screens/aboutUs.dart';
import 'package:admtm_app/screens/classes.dart';
import 'package:admtm_app/screens/fightTeam.dart';
import 'package:admtm_app/screens/gymsandtrainingschedule.dart';
import 'package:admtm_app/screens/home.dart';
import 'package:admtm_app/screens/news.dart';
import 'package:admtm_app/screens/whatismt.dart';
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
        canvasColor: Color.fromRGBO(29, 36, 42, 1),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        dividerColor: Color.fromRGBO(0, 0, 0, 0.5),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(46, 56, 66, 1),
            fontSize: 13,
            fontWeight: FontWeight.normal,
          ),
          headline1: TextStyle(
            color: Color.fromRGBO(46, 56, 66, 1),
            fontSize: 15,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Home(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/AboutUS': (context) => AboutUS(),
        '/Classes': (context) => Classes(),
        '/Whatismt': (context) => Whatismt(),
        '/FightTeam': (context) => FightTeam(),
        '/GymsAndTrainingSchedule': (context) => GymsAndTrainingSchedule(),
        '/News': (context) => News(),
      },
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
