import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intento_ejercicio1/src/data/network_service.dart';
import 'package:intento_ejercicio1/src/data/repository.dart';
import 'package:intento_ejercicio1/src/presentation/home_page/cubit/characters_cubit.dart';
import 'presentation/details_page/details_page.dart';
import 'presentation/home_page/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NetworkService networkService = NetworkService();
    final Repository repository = Repository(networkService: networkService);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Wars Threat Reporter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'home',
      routes: {
        'home': (context) => MultiBlocProvider(
              providers: [
                BlocProvider<CharactersCubit>(
                  create: ((context) =>
                      CharactersCubit(repository: repository)),
                ),
              ],
              child: HomePage(),
            ),
        'details': (context) => const DetailsPage(),
      },
    );
  }
}
