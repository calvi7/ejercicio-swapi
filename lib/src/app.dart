import 'package:flutter/material.dart';
import 'presentation/details_page/details_page.dart';
import 'presentation/home_page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Star Wars Threat Reporter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'details': (context) => DetailsPage(),
      },
    );
  }
}
