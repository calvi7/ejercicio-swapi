import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intento_ejercicio1/src/cubit/characters_cubit.dart';
import 'package:intento_ejercicio1/src/data/network_service.dart';
import 'package:intento_ejercicio1/src/data/repository.dart';
import 'package:intento_ejercicio1/src/presentation/home_page/characters_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NetworkService networkService = NetworkService();
    final Repository repository = Repository(networkService: networkService);

    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => CharactersCubit(repository: repository),
        child: const CharactersView(),
      ),
    );
  }
}
