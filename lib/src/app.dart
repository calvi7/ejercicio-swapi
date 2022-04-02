import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:intento_ejercicio1/src/cubit/theme_cubit.dart';
import 'package:intento_ejercicio1/src/presentation/details_page/details_page.dart';
import 'package:intento_ejercicio1/src/presentation/home_page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Wars Threat Reporter',
      theme: BlocProvider.of<ThemeCubit>(context).state.theme,
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'details': (context) => const DetailsPage(),
      },
    );
  }
}
