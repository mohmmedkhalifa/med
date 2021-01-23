import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/screens/1splash.dart';
import 'package:mymed/utiles/on_boarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
    //  apiKeyGoogle: '<Key>', // NOT YET TESTED
  );
  Widget _screen;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');

  if (seen == null || seen == false) {
    _screen = OnBording();
  } else {
    _screen = Splash();
  }

  runApp(LocalizedApp(child: MyApp(_screen)));
}

class MyApp extends StatelessWidget {
  Widget _screen;

  MyApp(this._screen);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff80cbc4)
      ),
      debugShowCheckedModeBanner: false,
      title: 'MyMed',
      home: this._screen,
      localizationsDelegates: translator.delegates,

      locale: translator.locale,

      supportedLocales: translator.locals(), // Locals list
    );
  }
}