import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/characters_cubit.dart';

import 'package:intento_ejercicio1/src/data/repository.dart';
import 'package:intento_ejercicio1/src/data/network_service.dart';

import 'package:intento_ejercicio1/src/widgets/custom_app_bar.dart';
import 'widgets/characters_view.dart';

import 'package:intento_ejercicio1/src/resources/resources.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final BoxStyles boxStyles = BoxStyles();
  final CustomAppBar customAppBar = CustomAppBar();
  @override
  Widget build(BuildContext context) {
    final NetworkService networkService = NetworkService();
    final Repository repository = Repository(networkService: networkService);

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: customAppBar.appBar(title: Strings.appBarTitle),
      body: BlocProvider(
        create: (context) => CharactersCubit(repository: repository),
        child: CharactersView(),
      ),
    );
  }
}
